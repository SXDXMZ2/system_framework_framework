.class Landroid/widget/RelativeLayout$DependencyGraph;
.super Ljava/lang/Object;
.source "RelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DependencyGraph"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RelativeLayout$DependencyGraph$Node;
    }
.end annotation


# instance fields
.field private mKeyNodes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mRoots:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1613
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mNodes:Ljava/util/ArrayList;

    .line 1619
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    .line 1625
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mRoots:Ljava/util/ArrayDeque;

    .line 1819
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/RelativeLayout$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/RelativeLayout$1;

    .prologue
    .line 1609
    invoke-direct {p0}, Landroid/widget/RelativeLayout$DependencyGraph;-><init>()V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$DependencyGraph;

    .prologue
    .line 1609
    iget-object v0, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    return-object v0
.end method

.method private static appendViewId(Landroid/content/res/Resources;Landroid/widget/RelativeLayout$DependencyGraph$Node;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "node"    # Landroid/widget/RelativeLayout$DependencyGraph$Node;
    .param p2, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1780
    iget-object v0, p1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1781
    iget-object v0, p1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1785
    :goto_0
    return-void

    .line 1783
    :cond_0
    const-string v0, "NO_ID"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private findRoots([I)Ljava/util/ArrayDeque;
    .locals 13
    .param p1, "rulesFilter"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/widget/RelativeLayout$DependencyGraph$Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1707
    iget-object v4, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    .line 1708
    .local v4, "keyNodes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    iget-object v7, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mNodes:Ljava/util/ArrayList;

    .line 1709
    .local v7, "nodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1713
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1714
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1715
    .local v6, "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    iget-object v12, v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    .line 1716
    iget-object v12, v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->clear()V

    .line 1713
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1720
    .end local v6    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    .line 1721
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1723
    .restart local v6    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    iget-object v12, v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1724
    .local v5, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    # getter for: Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I
    invoke-static {v5}, Landroid/widget/RelativeLayout$LayoutParams;->access$700(Landroid/widget/RelativeLayout$LayoutParams;)[I

    move-result-object v10

    .line 1725
    .local v10, "rules":[I
    array-length v11, p1

    .line 1729
    .local v11, "rulesCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v11, :cond_3

    .line 1730
    aget v12, p1, v3

    aget v9, v10, v12

    .line 1731
    .local v9, "rule":I
    if-lez v9, :cond_1

    .line 1733
    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1735
    .local v1, "dependency":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-eqz v1, :cond_1

    if-ne v1, v6, :cond_2

    .line 1729
    .end local v1    # "dependency":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1739
    .restart local v1    # "dependency":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_2
    iget-object v12, v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Ljava/util/HashMap;

    invoke-virtual {v12, v6, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1741
    iget-object v12, v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    invoke-virtual {v12, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 1720
    .end local v1    # "dependency":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    .end local v9    # "rule":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1746
    .end local v3    # "j":I
    .end local v5    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    .end local v10    # "rules":[I
    .end local v11    # "rulesCount":I
    :cond_4
    iget-object v8, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mRoots:Ljava/util/ArrayDeque;

    .line 1747
    .local v8, "roots":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->clear()V

    .line 1750
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_6

    .line 1751
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1752
    .restart local v6    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    iget-object v12, v6, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v8, v6}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 1750
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1755
    .end local v6    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_6
    return-object v8
.end method

.method private static printNode(Landroid/content/res/Resources;Landroid/widget/RelativeLayout$DependencyGraph$Node;)V
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "node"    # Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .prologue
    .line 1788
    iget-object v3, p1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1789
    iget-object v3, p1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    invoke-static {p0, v3}, Landroid/widget/RelativeLayout$DependencyGraph;->printViewId(Landroid/content/res/Resources;Landroid/view/View;)V

    .line 1797
    :cond_0
    return-void

    .line 1791
    :cond_1
    iget-object v3, p1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1792
    .local v1, "dependent":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1793
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-static {p0, p1, v0}, Landroid/widget/RelativeLayout$DependencyGraph;->appendViewId(Landroid/content/res/Resources;Landroid/widget/RelativeLayout$DependencyGraph$Node;Ljava/lang/StringBuilder;)V

    .line 1794
    invoke-static {p0, v1, v0}, Landroid/widget/RelativeLayout$DependencyGraph;->printdependents(Landroid/content/res/Resources;Landroid/widget/RelativeLayout$DependencyGraph$Node;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method static printViewId(Landroid/content/res/Resources;Landroid/view/View;)V
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1772
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1773
    const-string v0, "RelativeLayout"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    :goto_0
    return-void

    .line 1775
    :cond_0
    const-string v0, "RelativeLayout"

    const-string v1, "NO_ID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static printdependents(Landroid/content/res/Resources;Landroid/widget/RelativeLayout$DependencyGraph$Node;Ljava/lang/StringBuilder;)V
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "node"    # Landroid/widget/RelativeLayout$DependencyGraph$Node;
    .param p2, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1800
    const-string v3, " -> "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1801
    invoke-static {p0, p1, p2}, Landroid/widget/RelativeLayout$DependencyGraph;->appendViewId(Landroid/content/res/Resources;Landroid/widget/RelativeLayout$DependencyGraph$Node;Ljava/lang/StringBuilder;)V

    .line 1803
    iget-object v3, p1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1804
    const-string v3, "RelativeLayout"

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    :cond_0
    return-void

    .line 1806
    :cond_1
    iget-object v3, p1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1807
    .local v0, "dependent":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1808
    .local v2, "subBuffer":Ljava/lang/StringBuilder;
    invoke-static {p0, v0, v2}, Landroid/widget/RelativeLayout$DependencyGraph;->printdependents(Landroid/content/res/Resources;Landroid/widget/RelativeLayout$DependencyGraph$Node;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method


# virtual methods
.method add(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1649
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1650
    .local v0, "id":I
    invoke-static {p1}, Landroid/widget/RelativeLayout$DependencyGraph$Node;->acquire(Landroid/view/View;)Landroid/widget/RelativeLayout$DependencyGraph$Node;

    move-result-object v1

    .line 1652
    .local v1, "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1653
    iget-object v2, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1656
    :cond_0
    iget-object v2, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1657
    return-void
.end method

.method clear()V
    .locals 4

    .prologue
    .line 1631
    iget-object v2, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mNodes:Ljava/util/ArrayList;

    .line 1632
    .local v2, "nodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1634
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1635
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout$DependencyGraph$Node;->release()V

    .line 1634
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1637
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1639
    iget-object v3, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mKeyNodes:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 1640
    iget-object v3, p0, Landroid/widget/RelativeLayout$DependencyGraph;->mRoots:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V

    .line 1641
    return-void
.end method

.method varargs getSortedViews([Landroid/view/View;[I)V
    .locals 12
    .param p1, "sorted"    # [Landroid/view/View;
    .param p2, "rules"    # [I

    .prologue
    .line 1670
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout$DependencyGraph;->findRoots([I)Ljava/util/ArrayDeque;

    move-result-object v8

    .line 1671
    .local v8, "roots":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    const/4 v4, 0x0

    .line 1674
    .local v4, "index":I
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .local v7, "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-eqz v7, :cond_2

    .line 1675
    iget-object v9, v7, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    .line 1676
    .local v9, "view":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v6

    .line 1678
    .local v6, "key":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    aput-object v9, p1, v4

    .line 1680
    iget-object v2, v7, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependents:Ljava/util/HashMap;

    .line 1681
    .local v2, "dependents":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/widget/RelativeLayout$DependencyGraph$Node;Landroid/widget/RelativeLayout$DependencyGraph;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1682
    .local v1, "dependent":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    iget-object v0, v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->dependencies:Landroid/util/SparseArray;

    .line 1684
    .local v0, "dependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 1685
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-nez v10, :cond_0

    .line 1686
    invoke-virtual {v8, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "dependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    .end local v1    # "dependent":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_1
    move v4, v5

    .line 1689
    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_0

    .line 1691
    .end local v2    # "dependents":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/widget/RelativeLayout$DependencyGraph$Node;Landroid/widget/RelativeLayout$DependencyGraph;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "key":I
    .end local v9    # "view":Landroid/view/View;
    :cond_2
    array-length v10, p1

    if-ge v4, v10, :cond_3

    .line 1692
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Circular dependencies cannot exist in RelativeLayout"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1695
    :cond_3
    return-void
.end method

.method varargs log(Landroid/content/res/Resources;[I)V
    .locals 4
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "rules"    # [I

    .prologue
    .line 1765
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout$DependencyGraph;->findRoots([I)Ljava/util/ArrayDeque;

    move-result-object v2

    .line 1766
    .local v2, "roots":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/widget/RelativeLayout$DependencyGraph$Node;>;"
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 1767
    .local v1, "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$DependencyGraph;->printNode(Landroid/content/res/Resources;Landroid/widget/RelativeLayout$DependencyGraph$Node;)V

    goto :goto_0

    .line 1769
    .end local v1    # "node":Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_0
    return-void
.end method
