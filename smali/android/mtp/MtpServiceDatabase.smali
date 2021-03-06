.class abstract Landroid/mtp/MtpServiceDatabase;
.super Ljava/lang/Object;
.source "MtpServiceDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpServiceDatabase$ChangeItem;
    }
.end annotation


# static fields
.field protected static final ALL_HANDLES:I = 0xfffffff

.field protected static final ANCHOR_FILE_PREFIX:Ljava/lang/String; = "anchor_"

.field protected static final ANCHOR_FLAG_DELETED:I = 0x1

.field protected static final ANCHOR_FLAG_UPDATED:I = 0x8

.field protected static final ANCHOR_RESULTS_FILE_PREFIX:Ljava/lang/String; = "anchorResults_"

.field protected static final ANCHOR_STATUS_DELETED:I = 0x0

.field protected static final ANCHOR_STATUS_UPDATED:I = 0x1

.field protected static final ID_PROJECTION:[Ljava/lang/String;

.field protected static final ID_WHERE:Ljava/lang/String; = "_id = ?"

.field protected static final INVALID_HANDLE:I = -0x1

.field private static final MAX_OPERATIONS_PER_YIELD_POINT:I = 0x1f3

.field protected static final MAX_PROPERTIES_COUNT:I = 0x50

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mDBHelper:Landroid/mtp/MtpDeviceServiceDBHelper;

.field protected mDatabase:Landroid/mtp/MtpDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const-class v0, Landroid/mtp/MtpServiceDatabase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpServiceDatabase;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Landroid/mtp/MtpServiceDatabase;->ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/mtp/MtpDatabase;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "database"    # Landroid/mtp/MtpDatabase;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpServiceDatabase;->mContentResolver:Landroid/content/ContentResolver;

    .line 52
    invoke-static {p1}, Landroid/mtp/MtpDeviceServiceDBHelper;->getInstance(Landroid/content/Context;)Landroid/mtp/MtpDeviceServiceDBHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpServiceDatabase;->mDBHelper:Landroid/mtp/MtpDeviceServiceDBHelper;

    .line 53
    iput-object p2, p0, Landroid/mtp/MtpServiceDatabase;->mDatabase:Landroid/mtp/MtpDatabase;

    .line 54
    return-void
.end method

.method private static calculateAnchorResultCapacity(II)I
    .locals 2
    .param p0, "newAnchorSize"    # I
    .param p1, "changesSize"    # I

    .prologue
    .line 479
    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x4

    add-int v0, v1, p0

    .line 480
    .local v0, "capacity":I
    return v0
.end method

.method protected static final decodeHandle(I)I
    .locals 1
    .param p0, "encodedHandle"    # I

    .prologue
    const/4 v0, -0x1

    .line 240
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Landroid/mtp/MtpDeviceServiceTool$MtpHandleUtil;->parse(I)Landroid/mtp/MtpDeviceServiceTool$MtpHandleUtil$MtpInternalHandle;

    move-result-object v0

    iget v0, v0, Landroid/mtp/MtpDeviceServiceTool$MtpHandleUtil$MtpInternalHandle;->value:I

    goto :goto_0
.end method

.method protected static encodeHandle(II)I
    .locals 1
    .param p0, "rawHandle"    # I
    .param p1, "type"    # I

    .prologue
    const/4 v0, -0x1

    .line 229
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Landroid/mtp/MtpDeviceServiceTool$MtpHandleUtil;->create(II)I

    move-result v0

    goto :goto_0
.end method

.method private exists(Ljava/lang/String;)Z
    .locals 9
    .param p1, "handle"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 249
    const/4 v6, 0x0

    .line 251
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpServiceDatabase;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Landroid/mtp/MtpServiceDatabase;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Landroid/mtp/MtpServiceDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 253
    if-nez v6, :cond_1

    move v0, v7

    .line 255
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    .line 253
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    move v0, v8

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method protected static generateAnchor()Ljava/lang/String;
    .locals 2

    .prologue
    .line 488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static isInitialAnchor([B)Z
    .locals 5
    .param p0, "anchor"    # [B

    .prologue
    const/4 v4, 0x1

    .line 502
    if-nez p0, :cond_1

    .line 506
    :cond_0
    :goto_0
    return v4

    .line 503
    :cond_1
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 504
    .local v1, "b":B
    if-eqz v1, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    .line 503
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private writeAnchorResultsFile(ILjava/lang/String;Ljava/lang/String;[Landroid/mtp/MtpServiceDatabase$ChangeItem;)I
    .locals 11
    .param p1, "handleType"    # I
    .param p2, "currentAnchor"    # Ljava/lang/String;
    .param p3, "newAnchor"    # Ljava/lang/String;
    .param p4, "changes"    # [Landroid/mtp/MtpServiceDatabase$ChangeItem;

    .prologue
    .line 442
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "anchorResults_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 443
    .local v4, "fileName":Ljava/lang/String;
    if-nez p4, :cond_0

    const/4 v2, 0x0

    .line 444
    .local v2, "changeSize":I
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v8, v9

    .line 445
    .local v8, "newAnchorSize":I
    invoke-static {v8, v2}, Landroid/mtp/MtpServiceDatabase;->calculateAnchorResultCapacity(II)I

    move-result v9

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 447
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 448
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 449
    if-lez v2, :cond_2

    .line 450
    move-object v0, p4

    .local v0, "arr$":[Landroid/mtp/MtpServiceDatabase$ChangeItem;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_2

    aget-object v6, v0, v5

    .line 451
    .local v6, "item":Landroid/mtp/MtpServiceDatabase$ChangeItem;
    iget v9, v6, Landroid/mtp/MtpServiceDatabase$ChangeItem;->id:I

    invoke-static {v9, p1}, Landroid/mtp/MtpServiceDatabase;->encodeHandle(II)I

    move-result v3

    .line 453
    .local v3, "encodedHandle":I
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 454
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 455
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 456
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 458
    iget v9, v6, Landroid/mtp/MtpServiceDatabase$ChangeItem;->status:I

    if-nez v9, :cond_1

    .line 459
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 450
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 443
    .end local v0    # "arr$":[Landroid/mtp/MtpServiceDatabase$ChangeItem;
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "changeSize":I
    .end local v3    # "encodedHandle":I
    .end local v5    # "i$":I
    .end local v6    # "item":Landroid/mtp/MtpServiceDatabase$ChangeItem;
    .end local v7    # "len$":I
    .end local v8    # "newAnchorSize":I
    :cond_0
    array-length v2, p4

    goto :goto_0

    .line 461
    .restart local v0    # "arr$":[Landroid/mtp/MtpServiceDatabase$ChangeItem;
    .restart local v1    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "changeSize":I
    .restart local v3    # "encodedHandle":I
    .restart local v5    # "i$":I
    .restart local v6    # "item":Landroid/mtp/MtpServiceDatabase$ChangeItem;
    .restart local v7    # "len$":I
    .restart local v8    # "newAnchorSize":I
    :cond_1
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 465
    .end local v0    # "arr$":[Landroid/mtp/MtpServiceDatabase$ChangeItem;
    .end local v3    # "encodedHandle":I
    .end local v5    # "i$":I
    .end local v6    # "item":Landroid/mtp/MtpServiceDatabase$ChangeItem;
    .end local v7    # "len$":I
    :cond_2
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 466
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 467
    iget-object v9, p0, Landroid/mtp/MtpServiceDatabase;->mDatabase:Landroid/mtp/MtpDatabase;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Landroid/mtp/MtpDatabase;->addAnchorFile(Ljava/lang/String;[B)I

    move-result v9

    return v9
.end method


# virtual methods
.method protected addNewAnchor(Ljava/lang/String;I)I
    .locals 4
    .param p1, "anchor"    # Ljava/lang/String;
    .param p2, "isValid"    # I

    .prologue
    .line 492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "anchor_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "fileName":Ljava/lang/String;
    iget-object v2, p0, Landroid/mtp/MtpServiceDatabase;->mDatabase:Landroid/mtp/MtpDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/mtp/MtpDatabase;->addAnchorFile(Ljava/lang/String;[B)I

    move-result v1

    .line 494
    .local v1, "handle":I
    if-lez v1, :cond_0

    .line 496
    iget-object v2, p0, Landroid/mtp/MtpServiceDatabase;->mDBHelper:Landroid/mtp/MtpDeviceServiceDBHelper;

    invoke-virtual {p0}, Landroid/mtp/MtpServiceDatabase;->getServiceId()I

    move-result v3

    invoke-virtual {v2, p1, v3, v1, p2}, Landroid/mtp/MtpDeviceServiceDBHelper;->addAnchor(Ljava/lang/String;III)Z

    .line 498
    :cond_0
    return v1
.end method

.method protected cleanDeletedItems(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "accountSelectionDeleted"    # Ljava/lang/String;
    .param p3, "accountSelectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 435
    iget-object v1, p0, Landroid/mtp/MtpServiceDatabase;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 437
    .local v0, "result":I
    if-lez v0, :cond_0

    const/16 v1, 0x2001

    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x2002

    goto :goto_0
.end method

.method public abstract deleteObject(I)I
.end method

.method public final deleteObjectPropertyList(ILandroid/mtp/MtpPropertyList;)I
    .locals 2
    .param p1, "handle"    # I
    .param p2, "objectPropList"    # Landroid/mtp/MtpPropertyList;

    .prologue
    .line 189
    invoke-static {p1}, Landroid/mtp/MtpServiceDatabase;->decodeHandle(I)I

    move-result p1

    .line 190
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/mtp/MtpServiceDatabase;->exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2009

    .line 193
    :goto_0
    return v1

    .line 191
    :cond_0
    invoke-static {p2}, Landroid/mtp/MtpPropertyListHelper;->resetMtpPropertyList(Landroid/mtp/MtpPropertyList;)V

    .line 192
    invoke-virtual {p0, p1, p2}, Landroid/mtp/MtpServiceDatabase;->handleData(ILandroid/mtp/MtpPropertyList;)[I

    move-result-object v0

    .line 193
    .local v0, "resValues":[I
    if-nez v0, :cond_1

    const/16 v1, 0x2002

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    aget v1, v0, v1

    goto :goto_0
.end method

.method public final deleteServicePropertyList(ILandroid/mtp/MtpPropertyList;)I
    .locals 1
    .param p1, "serviceID"    # I
    .param p2, "sevicePropList"    # Landroid/mtp/MtpPropertyList;

    .prologue
    .line 92
    iget-object v0, p0, Landroid/mtp/MtpServiceDatabase;->mDBHelper:Landroid/mtp/MtpDeviceServiceDBHelper;

    invoke-virtual {v0, p1, p2}, Landroid/mtp/MtpDeviceServiceDBHelper;->deleteServicePropertyList(ILandroid/mtp/MtpPropertyList;)I

    move-result v0

    return v0
.end method

.method protected getAnchorProperties(ILandroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;)Landroid/mtp/MtpPropertyList;
    .locals 12
    .param p1, "objectId"    # I
    .param p2, "anchorInfo"    # Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;

    .prologue
    const/4 v3, 0x6

    .line 328
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 329
    .local v11, "objectIdStr":Ljava/lang/String;
    iget-object v1, p0, Landroid/mtp/MtpServiceDatabase;->mDBHelper:Landroid/mtp/MtpDeviceServiceDBHelper;

    invoke-virtual {v1, v11}, Landroid/mtp/MtpDeviceServiceDBHelper;->getAnchorObjects(Ljava/lang/String;)[Landroid/mtp/MtpServiceDatabase$ChangeItem;

    move-result-object v8

    .line 331
    .local v8, "changes":[Landroid/mtp/MtpServiceDatabase$ChangeItem;
    invoke-static {}, Landroid/mtp/MtpServiceDatabase;->generateAnchor()Ljava/lang/String;

    move-result-object v10

    .line 332
    .local v10, "newAnchor":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v10, v1}, Landroid/mtp/MtpServiceDatabase;->addNewAnchor(Ljava/lang/String;I)I

    .line 333
    iget v6, p2, Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;->isValid:I

    .line 334
    .local v6, "anchorIsValid":I
    const/4 v7, -0x1

    .line 335
    .local v7, "anchorResultId":I
    const/4 v9, 0x0

    .line 336
    .local v9, "handleType":I
    iget v1, p2, Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;->serviceId:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    .line 337
    const/4 v9, 0x1

    .line 341
    :cond_0
    :goto_0
    iget-object v1, p2, Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;->anchor:Ljava/lang/String;

    invoke-direct {p0, v9, v1, v10, v8}, Landroid/mtp/MtpServiceDatabase;->writeAnchorResultsFile(ILjava/lang/String;Ljava/lang/String;[Landroid/mtp/MtpServiceDatabase$ChangeItem;)I

    move-result v7

    .line 343
    if-gez v7, :cond_1

    .line 344
    const/4 v6, 0x1

    .line 346
    :cond_1
    iget-object v1, p0, Landroid/mtp/MtpServiceDatabase;->mDBHelper:Landroid/mtp/MtpDeviceServiceDBHelper;

    invoke-virtual {v1, v11}, Landroid/mtp/MtpDeviceServiceDBHelper;->setAnchorSynced(Ljava/lang/String;)Z

    .line 347
    iget-object v1, p0, Landroid/mtp/MtpServiceDatabase;->mDBHelper:Landroid/mtp/MtpDeviceServiceDBHelper;

    iget v2, p2, Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;->serviceId:I

    invoke-virtual {v1, v2, v10}, Landroid/mtp/MtpDeviceServiceDBHelper;->setCurrentAnchor(ILjava/lang/String;)V

    .line 348
    new-instance v0, Landroid/mtp/MtpPropertyList;

    const/4 v1, 0x2

    const/16 v2, 0x2001

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 351
    .local v0, "propList":Landroid/mtp/MtpPropertyList;
    const/16 v2, 0x2346

    int-to-long v4, v6

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 354
    const/16 v2, 0x2347

    int-to-long v4, v7

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 358
    return-object v0

    .line 338
    .end local v0    # "propList":Landroid/mtp/MtpPropertyList;
    :cond_2
    iget v1, p2, Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;->serviceId:I

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_0

    .line 339
    const/4 v9, 0x2

    goto :goto_0
.end method

.method protected abstract getChangedItems()[Landroid/mtp/MtpServiceDatabase$ChangeItem;
.end method

.method protected getChangedItems(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/mtp/MtpServiceDatabase$ChangeItem;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "idDirtyDeletedProjection"    # [Ljava/lang/String;
    .param p3, "accountSelectionDirtyOrDeleted"    # Ljava/lang/String;
    .param p4, "accountSelectionArgs"    # [Ljava/lang/String;
    .param p5, "deletedColumnName"    # Ljava/lang/String;
    .param p6, "dirtyColumnName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 369
    iget-object v0, p0, Landroid/mtp/MtpServiceDatabase;->mContentResolver:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 371
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 373
    const/4 v8, 0x0

    .line 374
    .local v8, "index":I
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v6, v0, [Landroid/mtp/MtpServiceDatabase$ChangeItem;

    .line 375
    .local v6, "changedItems":[Landroid/mtp/MtpServiceDatabase$ChangeItem;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    new-instance v0, Landroid/mtp/MtpServiceDatabase$ChangeItem;

    invoke-direct {v0}, Landroid/mtp/MtpServiceDatabase$ChangeItem;-><init>()V

    aput-object v0, v6, v8

    .line 377
    aget-object v0, v6, v8

    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Landroid/mtp/MtpServiceDatabase$ChangeItem;->id:I

    .line 378
    invoke-interface {v7, p5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    aget-object v0, v6, v8

    const/4 v1, 0x0

    iput v1, v0, Landroid/mtp/MtpServiceDatabase$ChangeItem;->status:I

    .line 383
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 380
    :cond_1
    invoke-interface {v7, p6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    aget-object v0, v6, v8

    const/4 v1, 0x1

    iput v1, v0, Landroid/mtp/MtpServiceDatabase$ChangeItem;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 387
    .end local v6    # "changedItems":[Landroid/mtp/MtpServiceDatabase$ChangeItem;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v6    # "changedItems":[Landroid/mtp/MtpServiceDatabase$ChangeItem;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 390
    .end local v6    # "changedItems":[Landroid/mtp/MtpServiceDatabase$ChangeItem;
    .end local v8    # "index":I
    :goto_2
    return-object v6

    :cond_3
    move-object v6, v5

    goto :goto_2
.end method

.method public getChangesSinceAnchor([B)I
    .locals 9
    .param p1, "anchor"    # [B

    .prologue
    const/4 v8, 0x1

    .line 292
    const/4 v3, -0x1

    .line 293
    .local v3, "handle":I
    invoke-static {p1}, Landroid/mtp/MtpServiceDatabase;->isInitialAnchor([B)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 294
    invoke-static {}, Landroid/mtp/MtpServiceDatabase;->generateAnchor()Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, "newAnchor":Ljava/lang/String;
    invoke-virtual {p0, v4, v8}, Landroid/mtp/MtpServiceDatabase;->addNewAnchor(Ljava/lang/String;I)I

    move-result v3

    .line 296
    iget-object v6, p0, Landroid/mtp/MtpServiceDatabase;->mDBHelper:Landroid/mtp/MtpDeviceServiceDBHelper;

    invoke-virtual {p0}, Landroid/mtp/MtpServiceDatabase;->getServiceId()I

    move-result v7

    invoke-virtual {v6, v7, v4}, Landroid/mtp/MtpDeviceServiceDBHelper;->setCurrentAnchor(ILjava/lang/String;)V

    move v6, v3

    .line 318
    .end local v4    # "newAnchor":Ljava/lang/String;
    :goto_0
    return v6

    .line 300
    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v6, 0x0

    array-length v7, p1

    invoke-direct {v1, p1, v6, v7}, Ljava/lang/String;-><init>([BII)V

    .line 301
    .local v1, "anchorString":Ljava/lang/String;
    iget-object v6, p0, Landroid/mtp/MtpServiceDatabase;->mDBHelper:Landroid/mtp/MtpDeviceServiceDBHelper;

    const-string v7, "anchor"

    invoke-virtual {v6, v7, v1}, Landroid/mtp/MtpDeviceServiceDBHelper;->getAnchorInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;

    move-result-object v0

    .line 302
    .local v0, "anchorInfo":Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;
    if-nez v0, :cond_1

    .line 304
    invoke-virtual {p0, v1, v8}, Landroid/mtp/MtpServiceDatabase;->addNewAnchor(Ljava/lang/String;I)I

    move-result v6

    goto :goto_0

    .line 306
    :cond_1
    iget v3, v0, Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;->objectId:I

    .line 310
    invoke-virtual {p0}, Landroid/mtp/MtpServiceDatabase;->getChangedItems()[Landroid/mtp/MtpServiceDatabase$ChangeItem;

    move-result-object v2

    .line 311
    .local v2, "changedItems":[Landroid/mtp/MtpServiceDatabase$ChangeItem;
    if-eqz v2, :cond_2

    array-length v6, v2

    if-lez v6, :cond_2

    .line 313
    iget-object v6, p0, Landroid/mtp/MtpServiceDatabase;->mDBHelper:Landroid/mtp/MtpDeviceServiceDBHelper;

    invoke-virtual {v6, v1, v2}, Landroid/mtp/MtpDeviceServiceDBHelper;->saveAnchorChanges(Ljava/lang/String;[Landroid/mtp/MtpServiceDatabase$ChangeItem;)Z

    move-result v5

    .line 314
    .local v5, "result":Z
    if-eqz v5, :cond_2

    .line 315
    invoke-virtual {p0, v2}, Landroid/mtp/MtpServiceDatabase;->processUpdatedData([Landroid/mtp/MtpServiceDatabase$ChangeItem;)V

    .end local v5    # "result":Z
    :cond_2
    move v6, v3

    .line 318
    goto :goto_0
.end method

.method protected abstract getContentUri()Landroid/net/Uri;
.end method

.method public abstract getNumObjects()I
.end method

.method protected getNumObjects(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 138
    const/4 v6, 0x0

    .line 140
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpServiceDatabase;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/mtp/MtpServiceDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 141
    if-nez v6, :cond_1

    const/4 v0, -0x1

    .line 143
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    .line 141
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public abstract getObjectHandles()[I
.end method

.method protected getObjectHandles(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)[I
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "handleType"    # I

    .prologue
    const/4 v5, 0x0

    .line 120
    iget-object v0, p0, Landroid/mtp/MtpServiceDatabase;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/mtp/MtpServiceDatabase;->ID_PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 121
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 123
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v7, v0, [I

    .line 124
    .local v7, "handleArray":[I
    const/4 v8, 0x0

    .local v8, "index":I
    move v9, v8

    .line 125
    .end local v8    # "index":I
    .local v9, "index":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "index":I
    .restart local v8    # "index":I
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0, p4}, Landroid/mtp/MtpServiceDatabase;->encodeHandle(II)I

    move-result v0

    aput v0, v7, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v9, v8

    .end local v8    # "index":I
    .restart local v9    # "index":I
    goto :goto_0

    .line 131
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 134
    .end local v7    # "handleArray":[I
    .end local v9    # "index":I
    :goto_1
    return-object v7

    .line 131
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    move-object v7, v5

    .line 134
    goto :goto_1
.end method

.method public abstract getObjectPropertyList(IIIII)Landroid/mtp/MtpPropertyList;
.end method

.method protected getObjectsPUID(I)Landroid/mtp/MtpPropertyList;
    .locals 10
    .param p1, "propCode"    # I

    .prologue
    const/16 v3, 0x2001

    .line 273
    invoke-virtual {p0}, Landroid/mtp/MtpServiceDatabase;->getObjectHandles()[I

    move-result-object v6

    .line 274
    .local v6, "allHandles":[I
    if-eqz v6, :cond_0

    array-length v2, v6

    if-lez v2, :cond_0

    .line 275
    new-instance v0, Landroid/mtp/MtpPropertyList;

    array-length v2, v6

    invoke-direct {v0, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 277
    .local v0, "mtpPropertyList":Landroid/mtp/MtpPropertyList;
    move-object v7, v6

    .local v7, "arr$":[I
    array-length v9, v7

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_1

    aget v1, v7, v8

    .line 278
    .local v1, "encodedHandle":I
    const/16 v3, 0xa

    int-to-long v4, v1

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 277
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 283
    .end local v0    # "mtpPropertyList":Landroid/mtp/MtpPropertyList;
    .end local v1    # "encodedHandle":I
    .end local v7    # "arr$":[I
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :cond_0
    new-instance v0, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    :cond_1
    return-object v0
.end method

.method protected abstract getServiceId()I
.end method

.method public final getServicePropertyList(II)Landroid/mtp/MtpPropertyList;
    .locals 1
    .param p1, "serviceID"    # I
    .param p2, "servicePropCode"    # I

    .prologue
    .line 82
    iget-object v0, p0, Landroid/mtp/MtpServiceDatabase;->mDBHelper:Landroid/mtp/MtpDeviceServiceDBHelper;

    invoke-virtual {v0, p1, p2}, Landroid/mtp/MtpDeviceServiceDBHelper;->getServicePropertyList(II)Landroid/mtp/MtpPropertyList;

    move-result-object v0

    return-object v0
.end method

.method public abstract handleData(ILandroid/mtp/MtpPropertyList;)[I
.end method

.method protected abstract processUpdatedData([Landroid/mtp/MtpServiceDatabase$ChangeItem;)V
.end method

.method public final setObjectPropertyList(Landroid/mtp/MtpPropertyList;)[I
    .locals 6
    .param p1, "objectPropList"    # Landroid/mtp/MtpPropertyList;

    .prologue
    const/4 v5, 0x0

    const/4 v2, -0x1

    .line 157
    const/4 v0, -0x1

    .line 158
    .local v0, "handle":I
    iget-object v3, p1, Landroid/mtp/MtpPropertyList;->mObjectHandles:[I

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/mtp/MtpPropertyList;->mObjectHandles:[I

    array-length v3, v3

    if-lez v3, :cond_0

    .line 159
    iget-object v3, p1, Landroid/mtp/MtpPropertyList;->mObjectHandles:[I

    aget v3, v3, v5

    invoke-static {v3}, Landroid/mtp/MtpServiceDatabase;->decodeHandle(I)I

    move-result v0

    .line 160
    if-lez v0, :cond_2

    .line 162
    :cond_0
    :goto_0
    iget-object v3, p1, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 163
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/mtp/MtpPropertyList;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 164
    iget-object v3, p1, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-nez v3, :cond_1

    .line 165
    iget-object v3, p1, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v1

    .line 163
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_2
    move v0, v2

    .line 160
    goto :goto_0

    .line 169
    :cond_3
    if-eq v0, v2, :cond_4

    .line 170
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/mtp/MtpServiceDatabase;->exists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 171
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/16 v3, 0x2009

    aput v3, v2, v5

    .line 174
    :goto_2
    return-object v2

    :cond_4
    invoke-virtual {p0, v0, p1}, Landroid/mtp/MtpServiceDatabase;->handleData(ILandroid/mtp/MtpPropertyList;)[I

    move-result-object v2

    goto :goto_2
.end method

.method public final setServicePropertyList(ILandroid/mtp/MtpPropertyList;)I
    .locals 1
    .param p1, "serviceID"    # I
    .param p2, "sevicePropList"    # Landroid/mtp/MtpPropertyList;

    .prologue
    .line 65
    iget-object v0, p0, Landroid/mtp/MtpServiceDatabase;->mDBHelper:Landroid/mtp/MtpDeviceServiceDBHelper;

    invoke-virtual {v0, p1, p2}, Landroid/mtp/MtpDeviceServiceDBHelper;->setServicePropertyList(ILandroid/mtp/MtpPropertyList;)I

    move-result v0

    return v0
.end method

.method protected updateDirtyData(Landroid/net/Uri;[Landroid/mtp/MtpServiceDatabase$ChangeItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "changedItems"    # [Landroid/mtp/MtpServiceDatabase$ChangeItem;
    .param p3, "dirtyColumnName"    # Ljava/lang/String;
    .param p4, "idWhereSelection"    # Ljava/lang/String;
    .param p5, "authority"    # Ljava/lang/String;

    .prologue
    .line 395
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v9, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 397
    .local v11, "value":Landroid/content/ContentValues;
    move-object/from16 v1, p2

    .local v1, "arr$":[Landroid/mtp/MtpServiceDatabase$ChangeItem;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v7, v1, v6

    .line 398
    .local v7, "item":Landroid/mtp/MtpServiceDatabase$ChangeItem;
    iget v12, v7, Landroid/mtp/MtpServiceDatabase$ChangeItem;->status:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 399
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 400
    invoke-static/range {p1 .. p1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    iget v15, v7, Landroid/mtp/MtpServiceDatabase$ChangeItem;->id:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p4

    invoke-virtual {v12, v0, v13}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 397
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 407
    .end local v7    # "item":Landroid/mtp/MtpServiceDatabase$ChangeItem;
    :cond_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_2

    .line 409
    :try_start_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    div-int/lit16 v2, v12, 0x1f3

    .line 410
    .local v2, "batchRound":I
    if-nez v2, :cond_3

    .line 411
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/mtp/MtpServiceDatabase;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p5

    invoke-virtual {v12, v0, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 431
    .end local v2    # "batchRound":I
    :cond_2
    :goto_1
    return-void

    .line 413
    .restart local v2    # "batchRound":I
    :cond_3
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v2, :cond_4

    .line 414
    mul-int/lit16 v4, v5, 0x1f3

    .line 415
    .local v4, "from":I
    add-int/lit8 v12, v5, 0x1

    mul-int/lit16 v10, v12, 0x1f3

    .line 416
    .local v10, "to":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/mtp/MtpServiceDatabase;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v13, Ljava/util/ArrayList;

    invoke-virtual {v9, v4, v10}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p5

    invoke-virtual {v12, v0, v13}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 413
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 419
    .end local v4    # "from":I
    .end local v10    # "to":I
    :cond_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    mul-int/lit16 v13, v2, 0x1f3

    if-lt v12, v13, :cond_2

    .line 420
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/mtp/MtpServiceDatabase;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v13, Ljava/util/ArrayList;

    mul-int/lit16 v14, v2, 0x1f3

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v9, v14, v15}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p5

    invoke-virtual {v12, v0, v13}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 425
    .end local v2    # "batchRound":I
    .end local v5    # "i":I
    :catch_0
    move-exception v3

    .line 426
    .local v3, "e":Landroid/os/RemoteException;
    sget-object v12, Landroid/mtp/MtpServiceDatabase;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "RemoteException: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 427
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 428
    .local v3, "e":Landroid/content/OperationApplicationException;
    sget-object v12, Landroid/mtp/MtpServiceDatabase;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "applyBatch throw OperationApplicationException: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public final updateObjectPropertyList(ILandroid/mtp/MtpPropertyList;)I
    .locals 2
    .param p1, "handle"    # I
    .param p2, "objectPropList"    # Landroid/mtp/MtpPropertyList;

    .prologue
    .line 206
    invoke-static {p1}, Landroid/mtp/MtpServiceDatabase;->decodeHandle(I)I

    move-result p1

    .line 207
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/mtp/MtpServiceDatabase;->exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2009

    .line 209
    :goto_0
    return v1

    .line 208
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/mtp/MtpServiceDatabase;->handleData(ILandroid/mtp/MtpPropertyList;)[I

    move-result-object v0

    .line 209
    .local v0, "resValues":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    goto :goto_0
.end method
