.class final Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;
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
    name = "OnRDSDataReceiver"
.end annotation


# instance fields
.field final mKey:Ljava/lang/Object;

.field final mListener:Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;

.field final synthetic this$0:Lcom/stericsson/hardware/fm/FmReceiverService;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmReceiverService;Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->this$0:Lcom/stericsson/hardware/fm/FmReceiverService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput-object p2, p0, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->mListener:Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;

    .line 341
    invoke-interface {p2}, Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->mKey:Ljava/lang/Object;

    .line 342
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 361
    const-string v0, "FmReceiverService"

    const-string v1, "FM receiver listener died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->this$0:Lcom/stericsson/hardware/fm/FmReceiverService;

    # getter for: Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/stericsson/hardware/fm/FmReceiverService;->access$600(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->this$0:Lcom/stericsson/hardware/fm/FmReceiverService;

    # getter for: Lcom/stericsson/hardware/fm/FmReceiverService;->mOnRDSDataReceivers:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/stericsson/hardware/fm/FmReceiverService;->access$600(Lcom/stericsson/hardware/fm/FmReceiverService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->mListener:Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->mListener:Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;

    invoke-interface {v0}, Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 369
    :cond_0
    return-void

    .line 365
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public callOnRDSDataFound(Landroid/os/Bundle;I)Z
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "frequency"    # I

    .prologue
    .line 350
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :try_start_1
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->mListener:Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;

    invoke-interface {v1, p1, p2}, Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;->onRDSDataFound(Landroid/os/Bundle;I)V

    .line 352
    monitor-exit p0

    .line 357
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 352
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "FmReceiverService"

    const-string v2, "callOnRDSDataFound: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getListener()Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService$OnRDSDataReceiver;->mListener:Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;

    return-object v0
.end method
