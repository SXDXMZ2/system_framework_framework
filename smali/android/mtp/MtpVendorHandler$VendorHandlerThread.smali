.class Landroid/mtp/MtpVendorHandler$VendorHandlerThread;
.super Landroid/os/Handler;
.source "MtpVendorHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpVendorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VendorHandlerThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/mtp/MtpVendorHandler;


# direct methods
.method public constructor <init>(Landroid/mtp/MtpVendorHandler;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 175
    iput-object p1, p0, Landroid/mtp/MtpVendorHandler$VendorHandlerThread;->this$0:Landroid/mtp/MtpVendorHandler;

    .line 176
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 177
    return-void
.end method

.method private processVendorEvent(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 220
    const-string v2, "EXTRA_MTP_OP_CODE"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 221
    .local v0, "code":I
    const-string v2, "EXTRA_MTP_PARAMS"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 222
    .local v1, "eventParams":[I
    iget-object v2, p0, Landroid/mtp/MtpVendorHandler$VendorHandlerThread;->this$0:Landroid/mtp/MtpVendorHandler;

    # getter for: Landroid/mtp/MtpVendorHandler;->mMtpVendorServer:Landroid/mtp/IMtpVendorServer;
    invoke-static {v2}, Landroid/mtp/MtpVendorHandler;->access$500(Landroid/mtp/MtpVendorHandler;)Landroid/mtp/IMtpVendorServer;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/mtp/IMtpVendorServer;->sendVendorEvent(I[I)V

    .line 223
    return-void
.end method

.method private processVendorResponse(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 197
    iget-object v3, p0, Landroid/mtp/MtpVendorHandler$VendorHandlerThread;->this$0:Landroid/mtp/MtpVendorHandler;

    # getter for: Landroid/mtp/MtpVendorHandler;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Landroid/mtp/MtpVendorHandler;->access$200(Landroid/mtp/MtpVendorHandler;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 198
    :try_start_0
    iget-object v3, p0, Landroid/mtp/MtpVendorHandler$VendorHandlerThread;->this$0:Landroid/mtp/MtpVendorHandler;

    const/4 v5, 0x0

    # setter for: Landroid/mtp/MtpVendorHandler;->mVendorResult:I
    invoke-static {v3, v5}, Landroid/mtp/MtpVendorHandler;->access$302(Landroid/mtp/MtpVendorHandler;I)I

    .line 199
    iget-object v3, p0, Landroid/mtp/MtpVendorHandler$VendorHandlerThread;->this$0:Landroid/mtp/MtpVendorHandler;

    # getter for: Landroid/mtp/MtpVendorHandler;->mResponseCompleted:Z
    invoke-static {v3}, Landroid/mtp/MtpVendorHandler;->access$400(Landroid/mtp/MtpVendorHandler;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 201
    monitor-exit v4

    .line 213
    :goto_0
    return-void

    .line 204
    :cond_0
    const-string v3, "EXTRA_MTP_DATA"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 205
    .local v1, "dataArray":[B
    const-string v3, "EXTRA_MTP_RESPONSE_CODE"

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 206
    .local v0, "code":I
    const-string v3, "EXTRA_MTP_PARAMS"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 208
    .local v2, "responseParams":[I
    iget-object v3, p0, Landroid/mtp/MtpVendorHandler$VendorHandlerThread;->this$0:Landroid/mtp/MtpVendorHandler;

    iget-object v5, p0, Landroid/mtp/MtpVendorHandler$VendorHandlerThread;->this$0:Landroid/mtp/MtpVendorHandler;

    # getter for: Landroid/mtp/MtpVendorHandler;->mMtpVendorServer:Landroid/mtp/IMtpVendorServer;
    invoke-static {v5}, Landroid/mtp/MtpVendorHandler;->access$500(Landroid/mtp/MtpVendorHandler;)Landroid/mtp/IMtpVendorServer;

    move-result-object v5

    invoke-interface {v5, v0, v2, v1}, Landroid/mtp/IMtpVendorServer;->sendVendorResponse(I[I[B)I

    move-result v5

    # setter for: Landroid/mtp/MtpVendorHandler;->mVendorResult:I
    invoke-static {v3, v5}, Landroid/mtp/MtpVendorHandler;->access$302(Landroid/mtp/MtpVendorHandler;I)I

    .line 210
    iget-object v3, p0, Landroid/mtp/MtpVendorHandler$VendorHandlerThread;->this$0:Landroid/mtp/MtpVendorHandler;

    const/4 v5, 0x1

    # setter for: Landroid/mtp/MtpVendorHandler;->mResponseCompleted:Z
    invoke-static {v3, v5}, Landroid/mtp/MtpVendorHandler;->access$402(Landroid/mtp/MtpVendorHandler;Z)Z

    .line 211
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    iget-object v3, p0, Landroid/mtp/MtpVendorHandler$VendorHandlerThread;->this$0:Landroid/mtp/MtpVendorHandler;

    # getter for: Landroid/mtp/MtpVendorHandler;->mResponseLock:Ljava/util/concurrent/Semaphore;
    invoke-static {v3}, Landroid/mtp/MtpVendorHandler;->access$600(Landroid/mtp/MtpVendorHandler;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 211
    .end local v0    # "code":I
    .end local v1    # "dataArray":[B
    .end local v2    # "responseParams":[I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 181
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 190
    :goto_0
    return-void

    .line 183
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {p0, v0}, Landroid/mtp/MtpVendorHandler$VendorHandlerThread;->processVendorResponse(Landroid/os/Bundle;)V

    goto :goto_0

    .line 187
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {p0, v0}, Landroid/mtp/MtpVendorHandler$VendorHandlerThread;->processVendorEvent(Landroid/os/Bundle;)V

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
