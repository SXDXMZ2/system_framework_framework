.class Landroid/widget/Editor$EasyEditSpanController;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EasyEditSpanController"
.end annotation


# static fields
.field private static final DISPLAY_TIMEOUT_MS:I = 0xbb8


# instance fields
.field private mHidePopup:Ljava/lang/Runnable;

.field private mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method constructor <init>(Landroid/widget/Editor;)V
    .locals 0

    .prologue
    .line 1877
    iput-object p1, p0, Landroid/widget/Editor$EasyEditSpanController;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/Editor$EasyEditSpanController;ILandroid/text/style/EasyEditSpan;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor$EasyEditSpanController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/text/style/EasyEditSpan;

    .prologue
    .line 1877
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$EasyEditSpanController;->sendNotification(ILandroid/text/style/EasyEditSpan;)V

    return-void
.end method

.method private sendNotification(ILandroid/text/style/EasyEditSpan;)V
    .locals 5
    .param p1, "textChangedType"    # I
    .param p2, "span"    # Landroid/text/style/EasyEditSpan;

    .prologue
    .line 1966
    :try_start_0
    invoke-virtual {p2}, Landroid/text/style/EasyEditSpan;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    .line 1967
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    .line 1968
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1969
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.text.style.EXTRA_TEXT_CHANGED_TYPE"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1970
    iget-object v3, p0, Landroid/widget/Editor$EasyEditSpanController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1976
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    :goto_0
    return-void

    .line 1972
    :catch_0
    move-exception v0

    .line 1974
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v3, "Editor"

    const-string v4, "PendingIntent for notification cannot be sent"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 1958
    iget-object v0, p0, Landroid/widget/Editor$EasyEditSpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    if-eqz v0, :cond_0

    .line 1959
    iget-object v0, p0, Landroid/widget/Editor$EasyEditSpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$EasyEditPopupWindow;->hide()V

    .line 1960
    iget-object v0, p0, Landroid/widget/Editor$EasyEditSpanController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$EasyEditSpanController;->mHidePopup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1962
    :cond_0
    return-void
.end method

.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 4
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "span"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 1887
    instance-of v0, p2, Landroid/text/style/EasyEditSpan;

    if-eqz v0, :cond_2

    .line 1888
    iget-object v0, p0, Landroid/widget/Editor$EasyEditSpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    if-nez v0, :cond_0

    .line 1889
    new-instance v0, Landroid/widget/Editor$EasyEditPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$EasyEditSpanController;->this$0:Landroid/widget/Editor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor$EasyEditPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor$EasyEditSpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    .line 1890
    new-instance v0, Landroid/widget/Editor$EasyEditSpanController$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$EasyEditSpanController$1;-><init>(Landroid/widget/Editor$EasyEditSpanController;)V

    iput-object v0, p0, Landroid/widget/Editor$EasyEditSpanController;->mHidePopup:Ljava/lang/Runnable;

    .line 1899
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$EasyEditSpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    # getter for: Landroid/widget/Editor$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;
    invoke-static {v0}, Landroid/widget/Editor$EasyEditPopupWindow;->access$800(Landroid/widget/Editor$EasyEditPopupWindow;)Landroid/text/style/EasyEditSpan;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1900
    iget-object v0, p0, Landroid/widget/Editor$EasyEditSpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    # getter for: Landroid/widget/Editor$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;
    invoke-static {v0}, Landroid/widget/Editor$EasyEditPopupWindow;->access$800(Landroid/widget/Editor$EasyEditPopupWindow;)Landroid/text/style/EasyEditSpan;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/style/EasyEditSpan;->setDeleteEnabled(Z)V

    .line 1903
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$EasyEditSpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    check-cast p2, Landroid/text/style/EasyEditSpan;

    .end local p2    # "span":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Landroid/widget/Editor$EasyEditPopupWindow;->setEasyEditSpan(Landroid/text/style/EasyEditSpan;)V

    .line 1904
    iget-object v0, p0, Landroid/widget/Editor$EasyEditSpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    new-instance v1, Landroid/widget/Editor$EasyEditSpanController$2;

    invoke-direct {v1, p0}, Landroid/widget/Editor$EasyEditSpanController$2;-><init>(Landroid/widget/Editor$EasyEditSpanController;)V

    # invokes: Landroid/widget/Editor$EasyEditPopupWindow;->setOnDeleteListener(Landroid/widget/Editor$EasyEditDeleteListener;)V
    invoke-static {v0, v1}, Landroid/widget/Editor$EasyEditPopupWindow;->access$1000(Landroid/widget/Editor$EasyEditPopupWindow;Landroid/widget/Editor$EasyEditDeleteListener;)V

    .line 1918
    iget-object v0, p0, Landroid/widget/Editor$EasyEditSpanController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1938
    :cond_2
    :goto_0
    return-void

    .line 1923
    :cond_3
    iget-object v0, p0, Landroid/widget/Editor$EasyEditSpanController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1928
    iget-object v0, p0, Landroid/widget/Editor$EasyEditSpanController;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z
    invoke-static {v0}, Landroid/widget/Editor;->access$1100(Landroid/widget/Editor;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1934
    iget-object v0, p0, Landroid/widget/Editor$EasyEditSpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$PinnedPopupWindow;->show()V

    .line 1935
    iget-object v0, p0, Landroid/widget/Editor$EasyEditSpanController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$EasyEditSpanController;->mHidePopup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1936
    iget-object v0, p0, Landroid/widget/Editor$EasyEditSpanController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$EasyEditSpanController;->mHidePopup:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 2
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "span"    # Ljava/lang/Object;
    .param p3, "previousStart"    # I
    .param p4, "previousEnd"    # I
    .param p5, "newStart"    # I
    .param p6, "newEnd"    # I

    .prologue
    .line 1950
    iget-object v1, p0, Landroid/widget/Editor$EasyEditSpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    if-eqz v1, :cond_0

    instance-of v1, p2, Landroid/text/style/EasyEditSpan;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 1951
    check-cast v0, Landroid/text/style/EasyEditSpan;

    .line 1952
    .local v0, "easyEditSpan":Landroid/text/style/EasyEditSpan;
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/widget/Editor$EasyEditSpanController;->sendNotification(ILandroid/text/style/EasyEditSpan;)V

    .line 1953
    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1955
    .end local v0    # "easyEditSpan":Landroid/text/style/EasyEditSpan;
    :cond_0
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 1
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "span"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 1942
    iget-object v0, p0, Landroid/widget/Editor$EasyEditSpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$EasyEditSpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    # getter for: Landroid/widget/Editor$EasyEditPopupWindow;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;
    invoke-static {v0}, Landroid/widget/Editor$EasyEditPopupWindow;->access$800(Landroid/widget/Editor$EasyEditPopupWindow;)Landroid/text/style/EasyEditSpan;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 1943
    invoke-virtual {p0}, Landroid/widget/Editor$EasyEditSpanController;->hide()V

    .line 1945
    :cond_0
    return-void
.end method
