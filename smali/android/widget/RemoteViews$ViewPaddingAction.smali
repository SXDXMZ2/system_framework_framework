.class Landroid/widget/RemoteViews$ViewPaddingAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewPaddingAction"
.end annotation


# static fields
.field public static final TAG:I = 0xe


# instance fields
.field bottom:I

.field left:I

.field right:I

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field top:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IIIII)V
    .locals 1
    .param p2, "viewId"    # I
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .prologue
    .line 1438
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1439
    iput p2, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    .line 1440
    iput p3, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->left:I

    .line 1441
    iput p4, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->top:I

    .line 1442
    iput p5, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->right:I

    .line 1443
    iput p6, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->bottom:I

    .line 1444
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1446
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1447
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    .line 1448
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->left:I

    .line 1449
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->top:I

    .line 1450
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->right:I

    .line 1451
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->bottom:I

    .line 1452
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 1465
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1466
    .local v0, "context":Landroid/content/Context;
    iget v2, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1467
    .local v1, "target":Landroid/view/View;
    if-nez v1, :cond_0

    .line 1469
    :goto_0
    return-void

    .line 1468
    :cond_0
    iget v2, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->left:I

    iget v3, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->top:I

    iget v4, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->right:I

    iget v5, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1472
    const-string v0, "ViewPaddingAction"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1455
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1456
    iget v0, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1457
    iget v0, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->left:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1458
    iget v0, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->top:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1459
    iget v0, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->right:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1460
    iget v0, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->bottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1461
    return-void
.end method
