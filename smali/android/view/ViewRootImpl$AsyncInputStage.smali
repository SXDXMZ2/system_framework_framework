.class abstract Landroid/view/ViewRootImpl$AsyncInputStage;
.super Landroid/view/ViewRootImpl$InputStage;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "AsyncInputStage"
.end annotation


# static fields
.field protected static final DEFER:I = 0x3


# instance fields
.field private mQueueHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private mQueueLength:I

.field private mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private final mTraceCounter:Ljava/lang/String;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V
    .locals 0
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;
    .param p3, "traceCounter"    # Ljava/lang/String;

    .prologue
    .line 3477
    iput-object p1, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 3478
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 3479
    iput-object p3, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mTraceCounter:Ljava/lang/String;

    .line 3480
    return-void
.end method

.method private dequeue(Landroid/view/ViewRootImpl$QueuedInputEvent;Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 4
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;
    .param p2, "prev"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 3575
    if-nez p2, :cond_1

    .line 3576
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 3580
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-ne v0, p1, :cond_0

    .line 3581
    iput-object p2, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 3583
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 3585
    iget v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueLength:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueLength:I

    .line 3586
    const-wide/16 v0, 0x4

    iget-object v2, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mTraceCounter:Ljava/lang/String;

    iget v3, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueLength:I

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 3587
    return-void

    .line 3578
    :cond_1
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v0, p2, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_0
.end method

.method private enqueue(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 4
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 3562
    iget-object v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-nez v0, :cond_0

    .line 3563
    iput-object p1, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 3564
    iput-object p1, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 3570
    :goto_0
    iget v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueLength:I

    .line 3571
    const-wide/16 v0, 0x4

    iget-object v2, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mTraceCounter:Ljava/lang/String;

    iget v3, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueLength:I

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 3572
    return-void

    .line 3566
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object p1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 3567
    iput-object p1, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_0
.end method


# virtual methods
.method protected apply(Landroid/view/ViewRootImpl$QueuedInputEvent;I)V
    .locals 1
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;
    .param p2, "result"    # I

    .prologue
    .line 3554
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 3555
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$AsyncInputStage;->defer(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 3559
    :goto_0
    return-void

    .line 3557
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;->apply(Landroid/view/ViewRootImpl$QueuedInputEvent;I)V

    goto :goto_0
.end method

.method protected defer(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 1
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 3488
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 3489
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$AsyncInputStage;->enqueue(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 3490
    return-void
.end method

.method protected forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 6
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 3495
    iget v5, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v5, v5, -0x3

    iput v5, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 3498
    iget-object v1, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 3499
    .local v1, "curr":Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-nez v1, :cond_1

    .line 3500
    invoke-super {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 3550
    :cond_0
    :goto_0
    return-void

    .line 3507
    :cond_1
    iget-object v5, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v5}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v2

    .line 3508
    .local v2, "deviceId":I
    const/4 v4, 0x0

    .line 3509
    .local v4, "prev":Landroid/view/ViewRootImpl$QueuedInputEvent;
    const/4 v0, 0x0

    .line 3510
    .local v0, "blocked":Z
    :goto_1
    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    .line 3511
    if-nez v0, :cond_2

    iget-object v5, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v5}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v5

    if-ne v2, v5, :cond_2

    .line 3512
    const/4 v0, 0x1

    .line 3514
    :cond_2
    move-object v4, v1

    .line 3515
    iget-object v1, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_1

    .line 3521
    :cond_3
    if-eqz v0, :cond_4

    .line 3522
    if-nez v1, :cond_0

    .line 3523
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$AsyncInputStage;->enqueue(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_0

    .line 3529
    :cond_4
    if-eqz v1, :cond_5

    .line 3530
    iget-object v1, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 3531
    invoke-direct {p0, p1, v4}, Landroid/view/ViewRootImpl$AsyncInputStage;->dequeue(Landroid/view/ViewRootImpl$QueuedInputEvent;Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 3533
    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 3536
    :goto_2
    if-eqz v1, :cond_0

    .line 3537
    iget-object v5, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v5}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v5

    if-ne v2, v5, :cond_6

    .line 3538
    iget v5, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_0

    .line 3541
    iget-object v3, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 3542
    .local v3, "next":Landroid/view/ViewRootImpl$QueuedInputEvent;
    invoke-direct {p0, v1, v4}, Landroid/view/ViewRootImpl$AsyncInputStage;->dequeue(Landroid/view/ViewRootImpl$QueuedInputEvent;Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 3543
    invoke-super {p0, v1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 3544
    move-object v1, v3

    .line 3545
    goto :goto_2

    .line 3546
    .end local v3    # "next":Landroid/view/ViewRootImpl$QueuedInputEvent;
    :cond_6
    move-object v4, v1

    .line 3547
    iget-object v1, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_2
.end method
