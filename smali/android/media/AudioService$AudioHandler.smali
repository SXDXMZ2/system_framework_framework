.class Landroid/media/AudioService$AudioHandler;
.super Landroid/os/Handler;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .locals 0

    .prologue
    .line 3231
    iput-object p1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/AudioService;
    .param p2, "x1"    # Landroid/media/AudioService$1;

    .prologue
    .line 3231
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioHandler;-><init>(Landroid/media/AudioService;)V

    return-void
.end method

.method static synthetic access$5000(Landroid/media/AudioService$AudioHandler;Landroid/media/MediaPlayer;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService$AudioHandler;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 3231
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioHandler;->cleanupPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private cleanupPlayer(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 3498
    if-eqz p1, :cond_0

    .line 3500
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 3501
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3506
    :cond_0
    :goto_0
    return-void

    .line 3502
    :catch_0
    move-exception v0

    .line 3503
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalStateException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onHandlePersistMediaButtonReceiver(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "receiver"    # Landroid/content/ComponentName;

    .prologue
    .line 3491
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "media_button_receiver"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 3495
    return-void

    .line 3491
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private onLoadSoundEffects()Z
    .locals 17

    .prologue
    .line 3293
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v11}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 3294
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBootCompleted:Z
    invoke-static {v11}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 3295
    const-string v11, "AudioService"

    const-string/jumbo v13, "onLoadSoundEffects() called before boot complete"

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3296
    const/4 v11, 0x0

    monitor-exit v12

    .line 3405
    :goto_0
    return v11

    .line 3299
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v11}, Landroid/media/AudioService;->access$1600(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 3300
    const/4 v11, 0x1

    monitor-exit v12

    goto :goto_0

    .line 3404
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 3303
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->loadTouchSoundAssets()V
    invoke-static {v11}, Landroid/media/AudioService;->access$4500(Landroid/media/AudioService;)V

    .line 3305
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    new-instance v13, Landroid/media/SoundPool;

    const/4 v14, 0x4

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Landroid/media/SoundPool;-><init>(III)V

    # setter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v11, v13}, Landroid/media/AudioService;->access$1602(Landroid/media/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 3306
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v13, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;
    invoke-static {v11, v13}, Landroid/media/AudioService;->access$1702(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolCallback;)Landroid/media/AudioService$SoundPoolCallback;

    .line 3307
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    new-instance v13, Landroid/media/AudioService$SoundPoolListenerThread;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-direct {v13, v14}, Landroid/media/AudioService$SoundPoolListenerThread;-><init>(Landroid/media/AudioService;)V

    # setter for: Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;
    invoke-static {v11, v13}, Landroid/media/AudioService;->access$4602(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolListenerThread;)Landroid/media/AudioService$SoundPoolListenerThread;

    .line 3308
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;
    invoke-static {v11}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolListenerThread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    .line 3309
    const/4 v1, 0x3

    .local v1, "attempts":I
    move v2, v1

    .line 3310
    .end local v1    # "attempts":I
    .local v2, "attempts":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;
    invoke-static {v11}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    if-nez v11, :cond_2

    add-int/lit8 v1, v2, -0x1

    .end local v2    # "attempts":I
    .restart local v1    # "attempts":I
    if-lez v2, :cond_3

    .line 3313
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v11}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v11

    const-wide/16 v13, 0x1388

    invoke-virtual {v11, v13, v14}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v1

    .line 3316
    .end local v1    # "attempts":I
    .restart local v2    # "attempts":I
    goto :goto_1

    .line 3314
    .end local v2    # "attempts":I
    .restart local v1    # "attempts":I
    :catch_0
    move-exception v3

    .line 3315
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v11, "AudioService"

    const-string v13, "Interrupted while waiting sound pool listener thread."

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 3316
    .end local v1    # "attempts":I
    .restart local v2    # "attempts":I
    goto :goto_1

    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_2
    move v1, v2

    .line 3319
    .end local v2    # "attempts":I
    .restart local v1    # "attempts":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;
    invoke-static {v11}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;

    move-result-object v11

    if-nez v11, :cond_5

    .line 3320
    const-string v11, "AudioService"

    const-string/jumbo v13, "onLoadSoundEffects() SoundPool listener or thread creation error"

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3321
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v11}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Landroid/os/Looper;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 3322
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v11}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Landroid/os/Looper;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Looper;->quit()V

    .line 3323
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v13, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v11, v13}, Landroid/media/AudioService;->access$1402(Landroid/media/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 3325
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v13, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;
    invoke-static {v11, v13}, Landroid/media/AudioService;->access$4602(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolListenerThread;)Landroid/media/AudioService$SoundPoolListenerThread;

    .line 3326
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v11}, Landroid/media/AudioService;->access$1600(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v11

    invoke-virtual {v11}, Landroid/media/SoundPool;->release()V

    .line 3327
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v13, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v11, v13}, Landroid/media/AudioService;->access$1602(Landroid/media/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 3328
    const/4 v11, 0x0

    monitor-exit v12

    goto/16 :goto_0

    .line 3336
    :cond_5
    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Landroid/media/AudioService;->access$4700()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    new-array v8, v11, [I

    .line 3337
    .local v8, "poolId":[I
    const/4 v5, 0x0

    .local v5, "fileIdx":I
    :goto_2
    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Landroid/media/AudioService;->access$4700()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_6

    .line 3338
    const/4 v11, -0x1

    aput v11, v8, v5

    .line 3337
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3346
    :cond_6
    const/4 v7, 0x0

    .line 3347
    .local v7, "numSamples":I
    const/4 v4, 0x0

    .local v4, "effect":I
    :goto_3
    const/16 v11, 0x9

    if-ge v4, v11, :cond_a

    .line 3349
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v11}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)[[I

    move-result-object v11

    aget-object v11, v11, v4

    const/4 v13, 0x1

    aget v11, v11, v13

    if-nez v11, :cond_7

    .line 3347
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3352
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v11}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)[[I

    move-result-object v11

    aget-object v11, v11, v4

    const/4 v13, 0x0

    aget v11, v11, v13

    aget v11, v8, v11

    const/4 v13, -0x1

    if-ne v11, v13, :cond_9

    .line 3353
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "/media/audio/ui/"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Landroid/media/AudioService;->access$4700()Ljava/util/List;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v14}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)[[I

    move-result-object v14

    aget-object v14, v14, v4

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3356
    .local v6, "filePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v11}, Landroid/media/AudioService;->access$1600(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual {v11, v6, v13}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v9

    .line 3357
    .local v9, "sampleId":I
    if-gtz v9, :cond_8

    .line 3358
    const-string v11, "AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Soundpool could not load file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3360
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v11}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)[[I

    move-result-object v11

    aget-object v11, v11, v4

    const/4 v13, 0x1

    aput v9, v11, v13

    .line 3361
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v11}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)[[I

    move-result-object v11

    aget-object v11, v11, v4

    const/4 v13, 0x0

    aget v11, v11, v13

    aput v9, v8, v11

    .line 3362
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .line 3365
    .end local v6    # "filePath":Ljava/lang/String;
    .end local v9    # "sampleId":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v11}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)[[I

    move-result-object v11

    aget-object v11, v11, v4

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v14}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)[[I

    move-result-object v14

    aget-object v14, v14, v4

    const/4 v15, 0x0

    aget v14, v14, v15

    aget v14, v8, v14

    aput v14, v11, v13

    goto/16 :goto_4

    .line 3370
    :cond_a
    if-lez v7, :cond_b

    .line 3371
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;
    invoke-static {v11}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/media/AudioService$SoundPoolCallback;->setSamples([I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3373
    const/4 v1, 0x3

    .line 3374
    const/4 v10, 0x1

    .local v10, "status":I
    move v2, v1

    .line 3375
    .end local v1    # "attempts":I
    .restart local v2    # "attempts":I
    :goto_5
    const/4 v11, 0x1

    if-ne v10, v11, :cond_12

    add-int/lit8 v1, v2, -0x1

    .end local v2    # "attempts":I
    .restart local v1    # "attempts":I
    if-lez v2, :cond_c

    .line 3377
    :try_start_4
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v11}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v11

    const-wide/16 v13, 0x1388

    invoke-virtual {v11, v13, v14}, Ljava/lang/Object;->wait(J)V

    .line 3378
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;
    invoke-static {v11}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;

    move-result-object v11

    invoke-virtual {v11}, Landroid/media/AudioService$SoundPoolCallback;->status()I
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v10

    move v2, v1

    .line 3381
    .end local v1    # "attempts":I
    .restart local v2    # "attempts":I
    goto :goto_5

    .line 3379
    .end local v2    # "attempts":I
    .restart local v1    # "attempts":I
    :catch_1
    move-exception v3

    .line 3380
    .restart local v3    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v11, "AudioService"

    const-string v13, "Interrupted while waiting sound pool callback."

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 3381
    .end local v1    # "attempts":I
    .restart local v2    # "attempts":I
    goto :goto_5

    .line 3384
    .end local v2    # "attempts":I
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .end local v10    # "status":I
    .restart local v1    # "attempts":I
    :cond_b
    const/4 v10, -0x1

    .line 3387
    .restart local v10    # "status":I
    :cond_c
    :goto_6
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v11}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Landroid/os/Looper;

    move-result-object v11

    if-eqz v11, :cond_d

    .line 3388
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v11}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Landroid/os/Looper;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Looper;->quit()V

    .line 3389
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v13, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v11, v13}, Landroid/media/AudioService;->access$1402(Landroid/media/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 3391
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v13, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;
    invoke-static {v11, v13}, Landroid/media/AudioService;->access$4602(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolListenerThread;)Landroid/media/AudioService$SoundPoolListenerThread;

    .line 3392
    if-eqz v10, :cond_10

    .line 3393
    const-string v11, "AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onLoadSoundEffects(), Error "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " while loading samples"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3395
    const/4 v4, 0x0

    :goto_7
    const/16 v11, 0x9

    if-ge v4, v11, :cond_f

    .line 3396
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v11}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)[[I

    move-result-object v11

    aget-object v11, v11, v4

    const/4 v13, 0x1

    aget v11, v11, v13

    if-lez v11, :cond_e

    .line 3397
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v11}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)[[I

    move-result-object v11

    aget-object v11, v11, v4

    const/4 v13, 0x1

    const/4 v14, -0x1

    aput v14, v11, v13

    .line 3395
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 3401
    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v11}, Landroid/media/AudioService;->access$1600(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v11

    invoke-virtual {v11}, Landroid/media/SoundPool;->release()V

    .line 3402
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v13, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v11, v13}, Landroid/media/AudioService;->access$1602(Landroid/media/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 3404
    :cond_10
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3405
    if-nez v10, :cond_11

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_11
    const/4 v11, 0x0

    goto/16 :goto_0

    .end local v1    # "attempts":I
    .restart local v2    # "attempts":I
    :cond_12
    move v1, v2

    .end local v2    # "attempts":I
    .restart local v1    # "attempts":I
    goto/16 :goto_6
.end method

.method private onPersistSafeVolumeState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 3513
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "audio_safe_volume_state"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3516
    return-void
.end method

.method private onPlaySoundEffect(II)V
    .locals 11
    .param p1, "effectType"    # I
    .param p2, "volume"    # I

    .prologue
    .line 3440
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 3442
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioService$AudioHandler;->onLoadSoundEffects()Z

    .line 3444
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Landroid/media/AudioService;->access$1600(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3445
    monitor-exit v10

    .line 3488
    :goto_0
    return-void

    .line 3449
    :cond_0
    if-gez p2, :cond_1

    .line 3450
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    # getter for: Landroid/media/AudioService;->sSoundEffectVolumeDb:I
    invoke-static {}, Landroid/media/AudioService;->access$4900()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v2, v0

    .line 3455
    .local v2, "volFloat":F
    :goto_1
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v0}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)[[I

    move-result-object v0

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget v0, v0, v1

    if-lez v0, :cond_2

    .line 3456
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Landroid/media/AudioService;->access$1600(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v1}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)[[I

    move-result-object v1

    aget-object v1, v1, p1

    const/4 v3, 0x1

    aget v1, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 3487
    :goto_2
    monitor-exit v10

    goto :goto_0

    .end local v2    # "volFloat":F
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3452
    :cond_1
    int-to-float v0, p2

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v2, v0, v1

    .restart local v2    # "volFloat":F
    goto :goto_1

    .line 3459
    :cond_2
    :try_start_1
    new-instance v9, Landroid/media/MediaPlayer;

    invoke-direct {v9}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3461
    .local v9, "mediaPlayer":Landroid/media/MediaPlayer;
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/audio/ui/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Landroid/media/AudioService;->access$4700()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, p1

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3463
    .local v8, "filePath":Ljava/lang/String;
    invoke-virtual {v9, v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 3464
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 3465
    invoke-virtual {v9}, Landroid/media/MediaPlayer;->prepare()V

    .line 3466
    invoke-virtual {v9, v2}, Landroid/media/MediaPlayer;->setVolume(F)V

    .line 3467
    new-instance v0, Landroid/media/AudioService$AudioHandler$1;

    invoke-direct {v0, p0}, Landroid/media/AudioService$AudioHandler$1;-><init>(Landroid/media/AudioService$AudioHandler;)V

    invoke-virtual {v9, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 3472
    new-instance v0, Landroid/media/AudioService$AudioHandler$2;

    invoke-direct {v0, p0}, Landroid/media/AudioService$AudioHandler$2;-><init>(Landroid/media/AudioService$AudioHandler;)V

    invoke-virtual {v9, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 3478
    invoke-virtual {v9}, Landroid/media/MediaPlayer;->start()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 3479
    .end local v8    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 3480
    .local v7, "ex":Ljava/io/IOException;
    :try_start_3
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IOException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3481
    .end local v7    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 3482
    .local v7, "ex":Ljava/lang/IllegalArgumentException;
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalArgumentException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3483
    .end local v7    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    .line 3484
    .local v7, "ex":Ljava/lang/IllegalStateException;
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalStateException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2
.end method

.method private onUnloadSoundEffects()V
    .locals 7

    .prologue
    .line 3414
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v3}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 3415
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Landroid/media/AudioService;->access$1600(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v3

    if-nez v3, :cond_0

    .line 3416
    monitor-exit v4

    .line 3437
    :goto_0
    return-void

    .line 3419
    :cond_0
    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Landroid/media/AudioService;->access$4700()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 3420
    .local v2, "poolId":[I
    const/4 v1, 0x0

    .local v1, "fileIdx":I
    :goto_1
    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Landroid/media/AudioService;->access$4700()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 3421
    const/4 v3, 0x0

    aput v3, v2, v1

    .line 3420
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3424
    :cond_1
    const/4 v0, 0x0

    .local v0, "effect":I
    :goto_2
    const/16 v3, 0x9

    if-ge v0, v3, :cond_4

    .line 3425
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x1

    aget v3, v3, v5

    if-gtz v3, :cond_3

    .line 3424
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3428
    :cond_3
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    aget v3, v2, v3

    if-nez v3, :cond_2

    .line 3429
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Landroid/media/AudioService;->access$1600(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v5, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v5}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)[[I

    move-result-object v5

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v5}, Landroid/media/SoundPool;->unload(I)Z

    .line 3430
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x1

    const/4 v6, -0x1

    aput v6, v3, v5

    .line 3431
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    const/4 v5, -0x1

    aput v5, v2, v3

    goto :goto_3

    .line 3436
    .end local v0    # "effect":I
    .end local v1    # "fileIdx":I
    .end local v2    # "poolId":[I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3434
    .restart local v0    # "effect":I
    .restart local v1    # "fileIdx":I
    .restart local v2    # "poolId":[I
    :cond_4
    :try_start_1
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Landroid/media/AudioService;->access$1600(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/SoundPool;->release()V

    .line 3435
    iget-object v3, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$1602(Landroid/media/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 3436
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private persistRingerMode(I)V
    .locals 2
    .param p1, "ringerMode"    # I

    .prologue
    .line 3284
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mUseFixedVolume:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3288
    :goto_0
    return-void

    .line 3287
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private persistVolume(Landroid/media/AudioService$VolumeStreamState;I)V
    .locals 4
    .param p1, "streamState"    # Landroid/media/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    .prologue
    .line 3274
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mUseFixedVolume:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3281
    :goto_0
    return-void

    .line 3277
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, p2}, Landroid/media/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method private setAllVolumes(Landroid/media/AudioService$VolumeStreamState;)V
    .locals 4
    .param p1, "streamState"    # Landroid/media/AudioService$VolumeStreamState;

    .prologue
    .line 3261
    invoke-virtual {p1}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 3264
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 3265
    .local v0, "numStreamTypes":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "streamType":I
    :goto_0
    if-ltz v1, :cond_1

    .line 3266
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$4100(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v2}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)[I

    move-result-object v2

    aget v2, v2, v1

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$4100(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 3268
    iget-object v2, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v2}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 3265
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3271
    :cond_1
    return-void
.end method

.method private setDeviceVolume(Landroid/media/AudioService$VolumeStreamState;I)V
    .locals 9
    .param p1, "streamState"    # Landroid/media/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    .prologue
    .line 3236
    invoke-virtual {p1, p2}, Landroid/media/AudioService$VolumeStreamState;->applyDeviceVolume(I)V

    .line 3239
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v7

    .line 3240
    .local v7, "numStreamTypes":I
    add-int/lit8 v8, v7, -0x1

    .local v8, "streamType":I
    :goto_0
    if-ltz v8, :cond_1

    .line 3241
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$4100(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eq v8, v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v0}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)[I

    move-result-object v0

    aget v0, v0, v8

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$4100(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3243
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v0}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v0

    aget-object v0, v0, v8

    iget-object v1, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->getDeviceForStream(I)I
    invoke-static {v1, v8}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioService$VolumeStreamState;->applyDeviceVolume(I)V

    .line 3240
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 3248
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v0}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/16 v6, 0x1f4

    move v3, p2

    move-object v5, p1

    # invokes: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3256
    return-void
.end method

.method private setForceUse(II)V
    .locals 0
    .param p1, "usage"    # I
    .param p2, "config"    # I

    .prologue
    .line 3509
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 3510
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3521
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 3769
    :cond_0
    :goto_0
    return-void

    .line 3524
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioService$VolumeStreamState;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Landroid/media/AudioService$AudioHandler;->setDeviceVolume(Landroid/media/AudioService$VolumeStreamState;I)V

    goto :goto_0

    .line 3528
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioService$VolumeStreamState;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/media/AudioService$AudioHandler;->setAllVolumes(Landroid/media/AudioService$VolumeStreamState;)V

    goto :goto_0

    .line 3532
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioService$VolumeStreamState;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Landroid/media/AudioService$AudioHandler;->persistVolume(Landroid/media/AudioService$VolumeStreamState;I)V

    goto :goto_0

    .line 3536
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mUseFixedVolume:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3539
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "volume_master"

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    goto :goto_0

    .line 3546
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mUseFixedVolume:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3549
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "volume_master_mute"

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 3558
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-virtual {v1}, Landroid/media/AudioService;->getRingerMode()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/media/AudioService$AudioHandler;->persistRingerMode(I)V

    goto :goto_0

    .line 3562
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMediaServerOk:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3563
    const-string v1, "AudioService"

    const-string v2, "Media server died."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3566
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;
    invoke-static {v1}, Landroid/media/AudioService;->access$5100(Landroid/media/AudioService;)Landroid/media/AudioSystem$ErrorCallback;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    .line 3567
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v1}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    # invokes: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v1 .. v7}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 3573
    :pswitch_7
    const-string v1, "AudioService"

    const-string v2, "Media server started."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3578
    const-string/jumbo v1, "restarting=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3581
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 3582
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v16

    .line 3583
    .local v16, "set":Ljava/util/Set;
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 3584
    .local v10, "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3585
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 3586
    .local v9, "device":Ljava/util/Map$Entry;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v3, v4, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    goto :goto_1

    .line 3591
    .end local v9    # "device":Ljava/util/Map$Entry;
    .end local v10    # "i":Ljava/util/Iterator;
    .end local v16    # "set":Ljava/util/Set;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v10    # "i":Ljava/util/Iterator;
    .restart local v16    # "set":Ljava/util/Set;
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3593
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMode:I
    invoke-static {v1}, Landroid/media/AudioService;->access$5200(Landroid/media/AudioService;)I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    .line 3596
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mForcedUseForComm:I
    invoke-static {v2}, Landroid/media/AudioService;->access$5300(Landroid/media/AudioService;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 3597
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mForcedUseForMedia:I
    invoke-static {v2}, Landroid/media/AudioService;->access$5400(Landroid/media/AudioService;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 3598
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mForcedUseForComm:I
    invoke-static {v2}, Landroid/media/AudioService;->access$5300(Landroid/media/AudioService;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 3599
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;
    invoke-static {v1}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xb

    :goto_2
    invoke-static {v2, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 3603
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v12

    .line 3604
    .local v12, "numStreamTypes":I
    add-int/lit8 v18, v12, -0x1

    .local v18, "streamType":I
    :goto_3
    if-ltz v18, :cond_3

    .line 3605
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v1}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v1

    aget-object v17, v1, v18

    .line 3606
    .local v17, "streamState":Landroid/media/AudioService$VolumeStreamState;
    const/4 v1, 0x0

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I
    invoke-static/range {v17 .. v17}, Landroid/media/AudioService$VolumeStreamState;->access$5500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    move/from16 v0, v18

    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 3608
    invoke-virtual/range {v17 .. v17}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 3604
    add-int/lit8 v18, v18, -0x1

    goto :goto_3

    .line 3599
    .end local v12    # "numStreamTypes":I
    .end local v17    # "streamState":Landroid/media/AudioService$VolumeStreamState;
    .end local v18    # "streamType":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 3612
    .restart local v12    # "numStreamTypes":I
    .restart local v18    # "streamType":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->getRingerMode()I

    move-result v2

    const/4 v3, 0x0

    # invokes: Landroid/media/AudioService;->setRingerModeInt(IZ)V
    invoke-static {v1, v2, v3}, Landroid/media/AudioService;->access$5600(Landroid/media/AudioService;IZ)V

    .line 3615
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->restoreMasterVolume()V
    invoke-static {v1}, Landroid/media/AudioService;->access$5700(Landroid/media/AudioService;)V

    .line 3618
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMonitorOrientation:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$5800(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3619
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->setOrientationForAudioSystem()V
    invoke-static {v1}, Landroid/media/AudioService;->access$5900(Landroid/media/AudioService;)V

    .line 3621
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMonitorRotation:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3622
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->setRotationForAudioSystem()V
    invoke-static {v1}, Landroid/media/AudioService;->access$6100(Landroid/media/AudioService;)V

    .line 3625
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/AudioService;->access$6200(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3626
    const/4 v3, 0x1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$6300(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    :goto_4
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 3629
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3631
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/AudioService;->access$6400(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3632
    const/4 v3, 0x3

    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mDockAudioMediaEnabled:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$6500(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    :goto_5
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 3635
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3638
    const-string/jumbo v1, "restarting=false"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3626
    :cond_6
    const/16 v1, 0xa

    goto :goto_4

    .line 3629
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 3632
    :cond_7
    const/4 v1, 0x0

    goto :goto_5

    .line 3635
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    .line 3642
    .end local v10    # "i":Ljava/util/Iterator;
    .end local v12    # "numStreamTypes":I
    .end local v16    # "set":Ljava/util/Set;
    .end local v18    # "streamType":I
    :pswitch_8
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService$AudioHandler;->onUnloadSoundEffects()V

    goto/16 :goto_0

    .line 3648
    :pswitch_9
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService$AudioHandler;->onLoadSoundEffects()Z

    move-result v11

    .line 3649
    .local v11, "loaded":Z
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 3650
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/media/AudioService$LoadSoundEffectReply;

    .line 3651
    .local v14, "reply":Landroid/media/AudioService$LoadSoundEffectReply;
    monitor-enter v14

    .line 3652
    if-eqz v11, :cond_8

    const/4 v1, 0x0

    :goto_6
    :try_start_6
    iput v1, v14, Landroid/media/AudioService$LoadSoundEffectReply;->mStatus:I

    .line 3653
    invoke-virtual {v14}, Ljava/lang/Object;->notify()V

    .line 3654
    monitor-exit v14

    goto/16 :goto_0

    :catchall_3
    move-exception v1

    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1

    .line 3652
    :cond_8
    const/4 v1, -0x1

    goto :goto_6

    .line 3659
    .end local v11    # "loaded":Z
    .end local v14    # "reply":Landroid/media/AudioService$LoadSoundEffectReply;
    :pswitch_a
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Landroid/media/AudioService$AudioHandler;->onPlaySoundEffect(II)V

    goto/16 :goto_0

    .line 3664
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 3665
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    invoke-static {v3, v1}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;Ljava/lang/String;)V

    .line 3666
    monitor-exit v2

    goto/16 :goto_0

    :catchall_4
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v1

    .line 3671
    :pswitch_c
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Landroid/media/AudioService$AudioHandler;->setForceUse(II)V

    goto/16 :goto_0

    .line 3675
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/media/AudioService$AudioHandler;->onHandlePersistMediaButtonReceiver(Landroid/content/ComponentName;)V

    goto/16 :goto_0

    .line 3679
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->onRcDisplayClear()V
    invoke-static {v1}, Landroid/media/AudioService;->access$6600(Landroid/media/AudioService;)V

    goto/16 :goto_0

    .line 3684
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/media/AudioService;->onRcDisplayUpdate(Landroid/media/AudioService$RemoteControlStackEntry;I)V
    invoke-static {v2, v1, v3}, Landroid/media/AudioService;->access$6700(Landroid/media/AudioService;Landroid/media/AudioService$RemoteControlStackEntry;I)V

    goto/16 :goto_0

    .line 3688
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->resetBluetoothSco()V
    invoke-static {v1}, Landroid/media/AudioService;->access$6800(Landroid/media/AudioService;)V

    goto/16 :goto_0

    .line 3692
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/media/AudioService;->onSetWiredDeviceConnectionState(IILjava/lang/String;)V
    invoke-static {v2, v3, v4, v1}, Landroid/media/AudioService;->access$6900(Landroid/media/AudioService;IILjava/lang/String;)V

    .line 3693
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Landroid/media/AudioService;->access$7000(Landroid/media/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 3697
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/media/AudioService;->onSetA2dpConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v2, v1, v3}, Landroid/media/AudioService;->access$7100(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 3698
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Landroid/media/AudioService;->access$7000(Landroid/media/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 3702
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget-object v1, v1, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v8

    .line 3703
    .local v8, "N":I
    if-lez v8, :cond_9

    .line 3705
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget-object v2, v1, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v2

    .line 3706
    :try_start_8
    new-instance v15, Landroid/media/AudioRoutesInfo;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget-object v1, v1, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v15, v1}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 3707
    .local v15, "routes":Landroid/media/AudioRoutesInfo;
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 3708
    :goto_7
    if-lez v8, :cond_9

    .line 3709
    add-int/lit8 v8, v8, -0x1

    .line 3710
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget-object v1, v1, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v13

    check-cast v13, Landroid/media/IAudioRoutesObserver;

    .line 3712
    .local v13, "obs":Landroid/media/IAudioRoutesObserver;
    :try_start_9
    invoke-interface {v13, v15}, Landroid/media/IAudioRoutesObserver;->dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_7

    .line 3713
    :catch_0
    move-exception v1

    goto :goto_7

    .line 3707
    .end local v13    # "obs":Landroid/media/IAudioRoutesObserver;
    .end local v15    # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_5
    move-exception v1

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v1

    .line 3717
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    iget-object v1, v1, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_0

    .line 3722
    .end local v8    # "N":I
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->onReevaluateRemote()V
    invoke-static {v1}, Landroid/media/AudioService;->access$7200(Landroid/media/AudioService;)V

    goto/16 :goto_0

    .line 3726
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Landroid/media/AudioService;->onNewPlaybackInfoForRcc(III)V
    invoke-static {v2, v3, v4, v1}, Landroid/media/AudioService;->access$7300(Landroid/media/AudioService;III)V

    goto/16 :goto_0

    .line 3730
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/IRemoteVolumeObserver;

    # invokes: Landroid/media/AudioService;->onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    invoke-static {v2, v3, v1}, Landroid/media/AudioService;->access$7400(Landroid/media/AudioService;ILandroid/media/IRemoteVolumeObserver;)V

    goto/16 :goto_0

    .line 3734
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioService$RccPlaybackState;

    invoke-virtual {v2, v3, v4, v1}, Landroid/media/AudioService;->onNewPlaybackStateForRcc(IILandroid/media/AudioService$RccPlaybackState;)V

    goto/16 :goto_0

    .line 3738
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioService;->onSetRemoteControlClientPlaybackPosition(IJ)V

    .line 3742
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    # invokes: Landroid/media/AudioService;->onSetRsxConnectionState(II)V
    invoke-static {v1, v2, v3}, Landroid/media/AudioService;->access$7500(Landroid/media/AudioService;II)V

    goto/16 :goto_0

    .line 3746
    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->onCheckMusicActive()V
    invoke-static {v1}, Landroid/media/AudioService;->access$7600(Landroid/media/AudioService;)V

    goto/16 :goto_0

    .line 3750
    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->onSendBecomingNoisyIntent()V
    invoke-static {v1}, Landroid/media/AudioService;->access$7700(Landroid/media/AudioService;)V

    goto/16 :goto_0

    .line 3755
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x1b

    if-ne v1, v3, :cond_a

    const/4 v1, 0x1

    :goto_8
    # invokes: Landroid/media/AudioService;->onConfigureSafeVolume(Z)V
    invoke-static {v2, v1}, Landroid/media/AudioService;->access$7800(Landroid/media/AudioService;Z)V

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x0

    goto :goto_8

    .line 3758
    :pswitch_1d
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/media/AudioService$AudioHandler;->onPersistSafeVolumeState(I)V

    goto/16 :goto_0

    .line 3762
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/media/AudioService;->onPromoteRcc(I)V
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$7900(Landroid/media/AudioService;I)V

    goto/16 :goto_0

    .line 3766
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$AudioHandler;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/media/AudioService;->onBroadcastScoConnectionState(I)V
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$8000(Landroid/media/AudioService;I)V

    goto/16 :goto_0

    .line 3521
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_c
        :pswitch_d
        :pswitch_10
        :pswitch_e
        :pswitch_f
        :pswitch_1
        :pswitch_4
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_c
        :pswitch_11
        :pswitch_12
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_8
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method
