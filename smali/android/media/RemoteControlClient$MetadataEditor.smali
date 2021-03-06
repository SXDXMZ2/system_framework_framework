.class public Landroid/media/RemoteControlClient$MetadataEditor;
.super Ljava/lang/Object;
.source "RemoteControlClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteControlClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MetadataEditor"
.end annotation


# static fields
.field public static final BITMAP_KEY_ARTWORK:I = 0x64

.field public static final METADATA_KEY_ARTWORK:I = 0x64


# instance fields
.field private mApplied:Z

.field protected mArtworkChanged:Z

.field protected mEditorArtwork:Landroid/graphics/Bitmap;

.field protected mEditorMetadata:Landroid/os/Bundle;

.field protected mMetadataChanged:Z

.field final synthetic this$0:Landroid/media/RemoteControlClient;


# direct methods
.method private constructor <init>(Landroid/media/RemoteControlClient;)V
    .locals 1

    .prologue
    .line 423
    iput-object p1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mApplied:Z

    .line 423
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/RemoteControlClient;
    .param p2, "x1"    # Landroid/media/RemoteControlClient$1;

    .prologue
    .line 403
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient$MetadataEditor;-><init>(Landroid/media/RemoteControlClient;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized apply()V
    .locals 4

    .prologue
    .line 549
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mApplied:Z

    if-eqz v0, :cond_0

    .line 550
    const-string v0, "RemoteControlClient"

    const-string v1, "Can\'t apply a previously applied MetadataEditor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 573
    :goto_0
    monitor-exit p0

    return-void

    .line 553
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$300(Landroid/media/RemoteControlClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 555
    :try_start_2
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    # setter for: Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;
    invoke-static {v0, v2}, Landroid/media/RemoteControlClient;->access$402(Landroid/media/RemoteControlClient;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 556
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$500(Landroid/media/RemoteControlClient;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$500(Landroid/media/RemoteControlClient;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 557
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    # getter for: Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$500(Landroid/media/RemoteControlClient;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 559
    :cond_1
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    iget-object v2, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    # setter for: Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Landroid/media/RemoteControlClient;->access$502(Landroid/media/RemoteControlClient;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 560
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    .line 561
    iget-boolean v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z

    iget-boolean v2, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mArtworkChanged:Z

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 563
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    # invokes: Landroid/media/RemoteControlClient;->sendMetadataWithArtwork_syncCacheLock()V
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$600(Landroid/media/RemoteControlClient;)V

    .line 571
    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mApplied:Z

    .line 572
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 549
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 564
    :cond_3
    :try_start_4
    iget-boolean v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z

    if-eqz v0, :cond_4

    .line 566
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    # invokes: Landroid/media/RemoteControlClient;->sendMetadata_syncCacheLock()V
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$700(Landroid/media/RemoteControlClient;)V

    goto :goto_1

    .line 567
    :cond_4
    iget-boolean v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mArtworkChanged:Z

    if-eqz v0, :cond_2

    .line 569
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->this$0:Landroid/media/RemoteControlClient;

    # invokes: Landroid/media/RemoteControlClient;->sendArtwork_syncCacheLock()V
    invoke-static {v0}, Landroid/media/RemoteControlClient;->access$800(Landroid/media/RemoteControlClient;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized clear()V
    .locals 2

    .prologue
    .line 534
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mApplied:Z

    if-eqz v0, :cond_0

    .line 535
    const-string v0, "RemoteControlClient"

    const-string v1, "Can\'t clear a previously applied MetadataEditor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    :goto_0
    monitor-exit p0

    return-void

    .line 538
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 428
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public declared-synchronized putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;
    .locals 4
    .param p1, "key"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 517
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mApplied:Z

    if-eqz v1, :cond_0

    .line 518
    const-string v1, "RemoteControlClient"

    const-string v2, "Can\'t edit a previously applied MetadataEditor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    .line 526
    .end local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    .local v0, "this":Landroid/media/RemoteControlClient$MetadataEditor;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 521
    .end local v0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    .restart local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    :cond_0
    const/16 v1, 0x64

    if-eq p1, v1, :cond_1

    .line 522
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type \'Bitmap\' for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 524
    :cond_1
    :try_start_2
    iput-object p2, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    .line 525
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mArtworkChanged:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, p0

    .line 526
    .end local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    .restart local v0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    goto :goto_0
.end method

.method public declared-synchronized putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;
    .locals 4
    .param p1, "key"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 493
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mApplied:Z

    if-eqz v1, :cond_0

    .line 494
    const-string v1, "RemoteControlClient"

    const-string v2, "Can\'t edit a previously applied MetadataEditor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    .line 502
    .end local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    .local v0, "this":Landroid/media/RemoteControlClient$MetadataEditor;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 497
    .end local v0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    .restart local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    :cond_0
    :try_start_1
    # getter for: Landroid/media/RemoteControlClient;->METADATA_KEYS_TYPE_LONG:[I
    invoke-static {}, Landroid/media/RemoteControlClient;->access$200()[I

    move-result-object v1

    # invokes: Landroid/media/RemoteControlClient;->validTypeForKey(I[I)Z
    invoke-static {p1, v1}, Landroid/media/RemoteControlClient;->access$100(I[I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 498
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type \'long\' for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 493
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 500
    :cond_1
    :try_start_2
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 501
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, p0

    .line 502
    .end local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    .restart local v0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    goto :goto_0
.end method

.method public declared-synchronized putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;
    .locals 4
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 464
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mApplied:Z

    if-eqz v1, :cond_0

    .line 465
    const-string v1, "RemoteControlClient"

    const-string v2, "Can\'t edit a previously applied MetadataEditor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    .line 473
    .end local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    .local v0, "this":Landroid/media/RemoteControlClient$MetadataEditor;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 468
    .end local v0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    .restart local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    :cond_0
    :try_start_1
    # getter for: Landroid/media/RemoteControlClient;->METADATA_KEYS_TYPE_STRING:[I
    invoke-static {}, Landroid/media/RemoteControlClient;->access$000()[I

    move-result-object v1

    # invokes: Landroid/media/RemoteControlClient;->validTypeForKey(I[I)Z
    invoke-static {p1, v1}, Landroid/media/RemoteControlClient;->access$100(I[I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 469
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type \'String\' for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 471
    :cond_1
    :try_start_2
    iget-object v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, p0

    .line 473
    .end local p0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    .restart local v0    # "this":Landroid/media/RemoteControlClient$MetadataEditor;
    goto :goto_0
.end method
