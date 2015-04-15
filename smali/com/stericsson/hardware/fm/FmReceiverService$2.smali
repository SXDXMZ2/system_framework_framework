.class Lcom/stericsson/hardware/fm/FmReceiverService$2;
.super Landroid/content/BroadcastReceiver;
.source "FmReceiverService.java"


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
    .line 553
    iput-object p1, p0, Lcom/stericsson/hardware/fm/FmReceiverService$2;->this$0:Lcom/stericsson/hardware/fm/FmReceiverService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 557
    if-nez p2, :cond_1

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 563
    const-string v1, "FmReceiverService"

    const-string/jumbo v2, "onReceive:ACTION_AIRPLANE_MODE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService$2;->this$0:Lcom/stericsson/hardware/fm/FmReceiverService;

    # invokes: Lcom/stericsson/hardware/fm/FmReceiverService;->isAirplaneModeOn()Z
    invoke-static {v1}, Lcom/stericsson/hardware/fm/FmReceiverService;->access$1300(Lcom/stericsson/hardware/fm/FmReceiverService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    iget-object v1, p0, Lcom/stericsson/hardware/fm/FmReceiverService$2;->this$0:Lcom/stericsson/hardware/fm/FmReceiverService;

    # invokes: Lcom/stericsson/hardware/fm/FmReceiverService;->onHandlePlaneMode()V
    invoke-static {v1}, Lcom/stericsson/hardware/fm/FmReceiverService;->access$1400(Lcom/stericsson/hardware/fm/FmReceiverService;)V

    goto :goto_0
.end method
