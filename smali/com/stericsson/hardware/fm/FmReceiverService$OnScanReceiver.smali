.class final Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;
.super Ljava/lang/Object;
.source "FmReceiverService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericsson/hardware/fm/FmReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnScanReceiver"
.end annotation


# instance fields
.field final mKey:Ljava/lang/Object;

.field final mListener:Lcom/stericsson/hardware/fm/IOnScanListener;

.field final synthetic this$0:Lcom/stericsson/hardware/fm/FmReceiverService;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnScanListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/stericsson/hardware/fm/IOnScanListener;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->this$0:Lcom/stericsson/hardware/fm/FmReceiverService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p2, p0, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->mListener:Lcom/stericsson/hardware/fm/IOnScanListener;

    .line 215
    invoke-interface {p2}, Lcom/stericsson/hardware/fm/IOnScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->mKey:Ljava/lang/Object;

    .line 216
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 247
    const-string v0, "FmReceiverService"

    const-string v1, "FM receiver listener died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->this$0:Lcom/stericsson/hardware/fm/FmReceiverService;

    # getter for: Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/stericsson/hardware/fm/FmReceiverService;->access$300(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->this$0:Lcom/stericsson/hardware/fm/FmReceiverService;

    # getter for: Lcom/stericsson/hardware/fm/FmReceiverService;->mOnScanReceivers:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/stericsson/hardware/fm/FmReceiverService;->access$300(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->mListener:Lcom/stericsson/hardware/fm/IOnScanListener;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->mListener:Lcom/stericsson/hardware/fm/IOnScanListener;

    invoke-interface {v0}, Lcom/stericsson/hardware/fm/IOnScanListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 255
    :cond_0
    return-void

    .line 251
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public callOnFullScan([I[IZ)Z
    .locals 3
    .param p1, "frequency"    # [I
    .param p2, "signalLevel"    # [I
    .param p3, "aborted"    # Z

    .prologue
    .line 236
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :try_start_1
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->mListener:Lcom/stericsson/hardware/fm/IOnScanListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/stericsson/hardware/fm/IOnScanListener;->onFullScan([I[IZ)V

    .line 238
    monitor-exit p0

    .line 243
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 238
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "FmReceiverService"

    const-string v2, "callOnFullScan: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public callOnScan(IIIZ)Z
    .locals 3
    .param p1, "tunedFrequency"    # I
    .param p2, "signalLevel"    # I
    .param p3, "scanDirection"    # I
    .param p4, "aborted"    # Z

    .prologue
    .line 224
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :try_start_1
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->mListener:Lcom/stericsson/hardware/fm/IOnScanListener;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/stericsson/hardware/fm/IOnScanListener;->onScan(IIIZ)V

    .line 226
    monitor-exit p0

    .line 231
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 226
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "FmReceiverService"

    const-string v2, "callOnScan: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getListener()Lcom/stericsson/hardware/fm/IOnScanListener;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService$OnScanReceiver;->mListener:Lcom/stericsson/hardware/fm/IOnScanListener;

    return-object v0
.end method