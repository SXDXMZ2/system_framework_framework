.class Lcom/stericsson/hardware/fm/FmReceiverService$1;
.super Ljava/lang/Object;
.source "FmReceiverService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericsson/hardware/fm/FmReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericsson/hardware/fm/FmReceiverService;


# direct methods
.method constructor <init>(Lcom/stericsson/hardware/fm/FmReceiverService;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverService$1;->this$0:Lcom/stericsson/hardware/fm/FmReceiverService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService$1;->this$0:Lcom/stericsson/hardware/fm/FmReceiverService;

    # invokes: Lcom/stericsson/hardware/fm/FmReceiverService;->_fm_receiver_reset()I
    invoke-static {v0}, Lcom/stericsson/hardware/fm/FmReceiverService;->access$1100(Lcom/stericsson/hardware/fm/FmReceiverService;)I

    move-result v0

    if-lez v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/stericsson/hardware/fm/FmReceiverService$1;->this$0:Lcom/stericsson/hardware/fm/FmReceiverService;

    const/4 v1, 0x3

    # invokes: Lcom/stericsson/hardware/fm/FmReceiverService;->notifyOnForcedReset(I)V
    invoke-static {v0, v1}, Lcom/stericsson/hardware/fm/FmReceiverService;->access$1200(Lcom/stericsson/hardware/fm/FmReceiverService;I)V

    .line 530
    :cond_0
    return-void
.end method
