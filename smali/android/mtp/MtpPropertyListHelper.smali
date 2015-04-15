.class Landroid/mtp/MtpPropertyListHelper;
.super Ljava/lang/Object;
.source "MtpPropertyListHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append(Landroid/mtp/MtpPropertyList;IIIJLjava/lang/String;)V
    .locals 1
    .param p0, "mtpPropertyList"    # Landroid/mtp/MtpPropertyList;
    .param p1, "handle"    # I
    .param p2, "property"    # I
    .param p3, "type"    # I
    .param p4, "longValue"    # J
    .param p6, "strValue"    # Ljava/lang/String;

    .prologue
    .line 31
    if-eqz p2, :cond_1

    .line 32
    const v0, 0xffff

    if-eq p3, v0, :cond_0

    const v0, 0xfffe

    if-eq p3, v0, :cond_0

    const/16 v0, 0x4001

    if-lt p3, v0, :cond_2

    const/16 v0, 0x400a

    if-gt p3, v0, :cond_2

    .line 34
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p6}, Landroid/mtp/MtpPropertyList;->append(IIILjava/lang/String;)V

    .line 39
    :cond_1
    :goto_0
    return-void

    .line 36
    :cond_2
    invoke-virtual/range {p0 .. p5}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_0
.end method

.method public static filterNullProperty(Landroid/mtp/MtpPropertyList;)Landroid/mtp/MtpPropertyList;
    .locals 9
    .param p0, "mtpPropertyList"    # Landroid/mtp/MtpPropertyList;

    .prologue
    .line 12
    const/4 v7, 0x0

    .line 13
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/mtp/MtpPropertyList;->getCount()I

    move-result v1

    if-ge v8, v1, :cond_1

    .line 14
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    aget v1, v1, v8

    if-eqz v1, :cond_0

    add-int/lit8 v7, v7, 0x1

    .line 13
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 16
    :cond_1
    new-instance v0, Landroid/mtp/MtpPropertyList;

    iget v1, p0, Landroid/mtp/MtpPropertyList;->mResult:I

    invoke-direct {v0, v7, v1}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 17
    .local v0, "newMtpPropertyList":Landroid/mtp/MtpPropertyList;
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/mtp/MtpPropertyList;->getCount()I

    move-result v1

    if-ge v8, v1, :cond_5

    .line 18
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    aget v1, v1, v8

    if-eqz v1, :cond_2

    .line 19
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mObjectHandles:[I

    aget v1, v1, v8

    iget-object v2, p0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    aget v2, v2, v8

    iget-object v3, p0, Landroid/mtp/MtpPropertyList;->mDataTypes:[I

    aget v3, v3, v8

    iget-object v4, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    if-nez v4, :cond_3

    const-wide/16 v4, 0x0

    :goto_2
    iget-object v6, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    if-nez v6, :cond_4

    const/4 v6, 0x0

    :goto_3
    invoke-static/range {v0 .. v6}, Landroid/mtp/MtpPropertyListHelper;->append(Landroid/mtp/MtpPropertyList;IIIJLjava/lang/String;)V

    .line 17
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 19
    :cond_3
    iget-object v4, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    aget-wide v4, v4, v8

    goto :goto_2

    :cond_4
    iget-object v6, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    aget-object v6, v6, v8

    goto :goto_3

    .line 26
    :cond_5
    return-object v0
.end method

.method public static resetMtpPropertyList(Landroid/mtp/MtpPropertyList;)V
    .locals 3
    .param p0, "mtpPropertyList"    # Landroid/mtp/MtpPropertyList;

    .prologue
    .line 42
    if-nez p0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    if-eqz v0, :cond_2

    .line 44
    iget-object v0, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 46
    :cond_2
    iget-object v0, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
