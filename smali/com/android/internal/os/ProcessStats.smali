.class public Lcom/android/internal/os/ProcessStats;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ProcessStats$Stats;
    }
.end annotation


# static fields
.field static final CHECK_RATIO:I = 0x32

.field private static final DEBUG:Z = false

.field private static final LOAD_AVERAGE_FORMAT:[I

.field private static final PROCESS_FULL_STATS_FORMAT:[I

.field static final PROCESS_FULL_STAT_MAJOR_FAULTS:I = 0x2

.field static final PROCESS_FULL_STAT_MINOR_FAULTS:I = 0x1

.field static final PROCESS_FULL_STAT_STIME:I = 0x4

.field static final PROCESS_FULL_STAT_UTIME:I = 0x3

.field static final PROCESS_FULL_STAT_VSIZE:I = 0x5

.field private static final PROCESS_STATS_FORMAT:[I

.field static final PROCESS_STAT_MAJOR_FAULTS:I = 0x1

.field static final PROCESS_STAT_MINOR_FAULTS:I = 0x0

.field static final PROCESS_STAT_STIME:I = 0x3

.field static final PROCESS_STAT_UTIME:I = 0x2

.field private static final SYSTEM_CPU_FORMAT:[I

.field private static final TAG:Ljava/lang/String; = "ProcessStats"

.field private static final localLOGV:Z

.field private static final sLoadComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/internal/os/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBaseIdleTime:J

.field private mBaseIoWaitTime:J

.field private mBaseIrqTime:J

.field private mBaseSoftIrqTime:J

.field private mBaseSystemTime:J

.field private mBaseUserTime:J

.field private mBuffer:[B

.field private mCpuSpeedTimes:[J

.field private mCpuSpeeds:[J

.field private mCurPids:[I

.field private mCurThreadPids:[I

.field private mCurrentSampleRealTime:J

.field private mCurrentSampleTime:J

.field private mFirst:Z

.field private final mIncludeThreads:Z

.field private mLastSampleRealTime:J

.field private mLastSampleTime:J

.field private mLoad1:F

.field private mLoad15:F

.field private mLoad5:F

.field private final mLoadAverageData:[F

.field private final mProcStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessFullStatsData:[J

.field private final mProcessFullStatsStringData:[Ljava/lang/String;

.field private final mProcessStatsData:[J

.field private mRelCpuSpeedTimes:[J

.field private mRelIdleTime:I

.field private mRelIoWaitTime:I

.field private mRelIrqTime:I

.field private mRelSoftIrqTime:I

.field private mRelSystemTime:I

.field private mRelUserTime:I

.field private final mSinglePidStatsData:[J

.field private final mSystemCpuData:[J

.field private final mWorkingProcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingProcsSorted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/os/ProcessStats;->PROCESS_STATS_FORMAT:[I

    .line 75
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/os/ProcessStats;->PROCESS_FULL_STATS_FORMAT:[I

    .line 111
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/os/ProcessStats;->SYSTEM_CPU_FORMAT:[I

    .line 124
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/internal/os/ProcessStats;->LOAD_AVERAGE_FORMAT:[I

    .line 243
    new-instance v0, Lcom/android/internal/os/ProcessStats$1;

    invoke-direct {v0}, Lcom/android/internal/os/ProcessStats$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    return-void

    .line 47
    nop

    :array_0
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
    .end array-data

    .line 75
    :array_1
    .array-data 4
        0x20
        0x1220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
    .end array-data

    .line 111
    :array_2
    .array-data 4
        0x120
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
    .end array-data

    .line 124
    :array_3
    .array-data 4
        0x4020
        0x4020
        0x4020
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 4
    .param p1, "includeThreads"    # Z

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessStats;->mProcessStatsData:[J

    .line 73
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessStats;->mSinglePidStatsData:[J

    .line 108
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/ProcessStats;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 109
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessStats;->mProcessFullStatsData:[J

    .line 122
    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessStats;->mSystemCpuData:[J

    .line 130
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/os/ProcessStats;->mLoadAverageData:[F

    .line 134
    iput v1, p0, Lcom/android/internal/os/ProcessStats;->mLoad1:F

    .line 135
    iput v1, p0, Lcom/android/internal/os/ProcessStats;->mLoad5:F

    .line 136
    iput v1, p0, Lcom/android/internal/os/ProcessStats;->mLoad15:F

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ProcessStats;->mFirst:Z

    .line 166
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/os/ProcessStats;->mBuffer:[B

    .line 263
    iput-boolean p1, p0, Lcom/android/internal/os/ProcessStats;->mIncludeThreads:Z

    .line 264
    return-void
.end method

.method private collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I
    .locals 27
    .param p1, "statsFile"    # Ljava/lang/String;
    .param p2, "parentPid"    # I
    .param p3, "first"    # Z
    .param p4, "curPids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ[I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/ProcessStats$Stats;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 350
    .local p5, "allProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ProcessStats$Stats;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v17

    .line 351
    .local v17, "pids":[I
    if-nez v17, :cond_1

    const/4 v9, 0x0

    .line 352
    .local v9, "NP":I
    :goto_0
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 353
    .local v10, "NS":I
    const/4 v11, 0x0

    .line 354
    .local v11, "curStatsIndex":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v9, :cond_0

    .line 355
    aget v5, v17, v12

    .line 356
    .local v5, "pid":I
    if-gez v5, :cond_2

    .line 357
    move v9, v5

    .line 513
    .end local v5    # "pid":I
    :cond_0
    :goto_2
    if-ge v11, v10, :cond_f

    .line 515
    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/os/ProcessStats$Stats;

    .line 516
    .local v20, "st":Lcom/android/internal/os/ProcessStats$Stats;
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    .line 517
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    .line 518
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_minfaults:I

    .line 519
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_majfaults:I

    .line 520
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->removed:Z

    .line 521
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->working:Z

    .line 522
    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 523
    add-int/lit8 v10, v10, -0x1

    .line 525
    goto :goto_2

    .line 351
    .end local v9    # "NP":I
    .end local v10    # "NS":I
    .end local v11    # "curStatsIndex":I
    .end local v12    # "i":I
    .end local v20    # "st":Lcom/android/internal/os/ProcessStats$Stats;
    :cond_1
    move-object/from16 v0, v17

    array-length v9, v0

    goto :goto_0

    .line 360
    .restart local v5    # "pid":I
    .restart local v9    # "NP":I
    .restart local v10    # "NS":I
    .restart local v11    # "curStatsIndex":I
    .restart local v12    # "i":I
    :cond_2
    if-ge v11, v10, :cond_4

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/ProcessStats$Stats;

    move-object/from16 v20, v3

    .line 362
    .restart local v20    # "st":Lcom/android/internal/os/ProcessStats$Stats;
    :goto_3
    if-eqz v20, :cond_9

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->pid:I

    if-ne v3, v5, :cond_9

    .line 364
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->added:Z

    .line 365
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->working:Z

    .line 366
    add-int/lit8 v11, v11, 0x1

    .line 371
    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->interesting:Z

    if-eqz v3, :cond_3

    .line 372
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v23

    .line 374
    .local v23, "uptime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessStats;->mProcessStatsData:[J

    move-object/from16 v18, v0

    .line 375
    .local v18, "procStats":[J
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/os/ProcessStats;->PROCESS_STATS_FORMAT:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v18

    invoke-static {v3, v4, v6, v0, v7}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-nez v3, :cond_5

    .line 354
    .end local v18    # "procStats":[J
    .end local v23    # "uptime":J
    :cond_3
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 360
    .end local v20    # "st":Lcom/android/internal/os/ProcessStats$Stats;
    :cond_4
    const/16 v20, 0x0

    goto :goto_3

    .line 380
    .restart local v18    # "procStats":[J
    .restart local v20    # "st":Lcom/android/internal/os/ProcessStats$Stats;
    .restart local v23    # "uptime":J
    :cond_5
    const/4 v3, 0x0

    aget-wide v15, v18, v3

    .line 381
    .local v15, "minfaults":J
    const/4 v3, 0x1

    aget-wide v13, v18, v3

    .line 382
    .local v13, "majfaults":J
    const/4 v3, 0x2

    aget-wide v25, v18, v3

    .line 383
    .local v25, "utime":J
    const/4 v3, 0x3

    aget-wide v21, v18, v3

    .line 385
    .local v21, "stime":J
    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_utime:J

    cmp-long v3, v25, v3

    if-nez v3, :cond_6

    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_stime:J

    cmp-long v3, v21, v3

    if-nez v3, :cond_6

    .line 386
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    .line 387
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    .line 388
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_minfaults:I

    .line 389
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_majfaults:I

    .line 390
    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->active:Z

    if-eqz v3, :cond_3

    .line 391
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->active:Z

    goto :goto_4

    .line 396
    :cond_6
    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->active:Z

    if-nez v3, :cond_7

    .line 397
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->active:Z

    .line 400
    :cond_7
    if-gez p2, :cond_8

    .line 401
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3}, Lcom/android/internal/os/ProcessStats;->getName(Lcom/android/internal/os/ProcessStats$Stats;Ljava/lang/String;)V

    .line 402
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v3, :cond_8

    .line 403
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/internal/os/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/ProcessStats;->mCurThreadPids:[I

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/internal/os/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/ProcessStats;->mCurThreadPids:[I

    .line 414
    :cond_8
    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_uptime:J

    sub-long v3, v23, v3

    move-object/from16 v0, v20

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_uptime:J

    .line 415
    move-wide/from16 v0, v23

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/internal/os/ProcessStats$Stats;->base_uptime:J

    .line 416
    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_utime:J

    sub-long v3, v25, v3

    long-to-int v3, v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    .line 417
    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_stime:J

    sub-long v3, v21, v3

    long-to-int v3, v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    .line 418
    move-wide/from16 v0, v25

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/internal/os/ProcessStats$Stats;->base_utime:J

    .line 419
    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/internal/os/ProcessStats$Stats;->base_stime:J

    .line 420
    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_minfaults:J

    sub-long v3, v15, v3

    long-to-int v3, v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_minfaults:I

    .line 421
    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_majfaults:J

    sub-long v3, v13, v3

    long-to-int v3, v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_majfaults:I

    .line 422
    move-object/from16 v0, v20

    iput-wide v15, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_minfaults:J

    .line 423
    move-object/from16 v0, v20

    iput-wide v13, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_majfaults:J

    .line 424
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->working:Z

    goto/16 :goto_4

    .line 430
    .end local v13    # "majfaults":J
    .end local v15    # "minfaults":J
    .end local v18    # "procStats":[J
    .end local v21    # "stime":J
    .end local v23    # "uptime":J
    .end local v25    # "utime":J
    :cond_9
    if-eqz v20, :cond_a

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->pid:I

    if-le v3, v5, :cond_e

    .line 432
    :cond_a
    new-instance v20, Lcom/android/internal/os/ProcessStats$Stats;

    .end local v20    # "st":Lcom/android/internal/os/ProcessStats$Stats;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/ProcessStats;->mIncludeThreads:Z

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-direct {v0, v5, v1, v3}, Lcom/android/internal/os/ProcessStats$Stats;-><init>(IIZ)V

    .line 433
    .restart local v20    # "st":Lcom/android/internal/os/ProcessStats$Stats;
    move-object/from16 v0, p5

    move-object/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 434
    add-int/lit8 v11, v11, 0x1

    .line 435
    add-int/lit8 v10, v10, 0x1

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessStats;->mProcessFullStatsStringData:[Ljava/lang/String;

    move-object/from16 v19, v0

    .line 441
    .local v19, "procStatsString":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessStats;->mProcessFullStatsData:[J

    move-object/from16 v18, v0

    .line 442
    .restart local v18    # "procStats":[J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move-object/from16 v0, v20

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_uptime:J

    .line 443
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/os/ProcessStats;->PROCESS_FULL_STATS_FORMAT:[I

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v3, v4, v0, v1, v6}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 451
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->interesting:Z

    .line 452
    const/4 v3, 0x0

    aget-object v3, v19, v3

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 453
    const/4 v3, 0x1

    aget-wide v3, v18, v3

    move-object/from16 v0, v20

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_minfaults:J

    .line 454
    const/4 v3, 0x2

    aget-wide v3, v18, v3

    move-object/from16 v0, v20

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_majfaults:J

    .line 455
    const/4 v3, 0x3

    aget-wide v3, v18, v3

    move-object/from16 v0, v20

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_utime:J

    .line 456
    const/4 v3, 0x4

    aget-wide v3, v18, v3

    move-object/from16 v0, v20

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_stime:J

    .line 469
    :goto_5
    if-gez p2, :cond_d

    .line 470
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3}, Lcom/android/internal/os/ProcessStats;->getName(Lcom/android/internal/os/ProcessStats$Stats;Ljava/lang/String;)V

    .line 471
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v3, :cond_b

    .line 472
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/internal/os/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/ProcessStats;->mCurThreadPids:[I

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/internal/os/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/ProcessStats;->mCurThreadPids:[I

    .line 484
    :cond_b
    :goto_6
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    .line 485
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    .line 486
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_minfaults:I

    .line 487
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_majfaults:I

    .line 488
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->added:Z

    .line 489
    if-nez p3, :cond_3

    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->interesting:Z

    if-eqz v3, :cond_3

    .line 490
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->working:Z

    goto/16 :goto_4

    .line 463
    :cond_c
    const-string v3, "ProcessStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping unknown process pid "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string v3, "<unknown>"

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 465
    const-wide/16 v3, 0x0

    move-object/from16 v0, v20

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_stime:J

    move-object/from16 v0, v20

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_utime:J

    .line 466
    const-wide/16 v3, 0x0

    move-object/from16 v0, v20

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_majfaults:J

    move-object/from16 v0, v20

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_minfaults:J

    goto/16 :goto_5

    .line 475
    :cond_d
    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->interesting:Z

    if-eqz v3, :cond_b

    .line 476
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->baseName:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 477
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/ProcessStats;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->nameWidth:I

    goto :goto_6

    .line 496
    .end local v18    # "procStats":[J
    .end local v19    # "procStatsString":[Ljava/lang/String;
    :cond_e
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    .line 497
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    .line 498
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_minfaults:I

    .line 499
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_majfaults:I

    .line 500
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->removed:Z

    .line 501
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->working:Z

    .line 502
    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 503
    add-int/lit8 v10, v10, -0x1

    .line 509
    add-int/lit8 v12, v12, -0x1

    .line 510
    goto/16 :goto_4

    .line 527
    .end local v5    # "pid":I
    .end local v20    # "st":Lcom/android/internal/os/ProcessStats$Stats;
    :cond_f
    return-object v17
.end method

.method private dumpKernelStack(Ljava/io/PrintWriter;I)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pid"    # I

    .prologue
    .line 701
    const/4 v4, 0x0

    .line 702
    .local v4, "line":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/proc/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "stack"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 703
    .local v0, "FilePath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 706
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 712
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 713
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 715
    :catch_0
    move-exception v3

    .line 716
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    const-string v5, "ProcessStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dumpKernelStack IOException ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 720
    if-eqz v2, :cond_2

    .line 722
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 723
    const/4 v1, 0x0

    .line 729
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :goto_1
    return-void

    .line 707
    :catch_1
    move-exception v3

    .line 708
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v5, "ProcessStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dumpKernelStack FileNotFoundException ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 720
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :cond_0
    if-eqz v2, :cond_2

    .line 722
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 723
    const/4 v1, 0x0

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 725
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_2
    move-exception v3

    .line 726
    .local v3, "e":Ljava/io/IOException;
    const-string v5, "ProcessStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dumpKernelStack IOException ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 728
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 725
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_3
    move-exception v3

    .line 726
    const-string v5, "ProcessStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dumpKernelStack IOException ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 728
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 719
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v5

    .line 720
    if-eqz v2, :cond_1

    .line 722
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 723
    const/4 v1, 0x0

    .line 727
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :goto_2
    throw v5

    .line 725
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v3

    .line 726
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v6, "ProcessStats"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dumpKernelStack IOException ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :cond_2
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method

.method private getCpuSpeedTimes([J)[J
    .locals 14
    .param p1, "out"    # [J

    .prologue
    .line 566
    move-object v7, p1

    .line 567
    .local v7, "tempTimes":[J
    iget-object v6, p0, Lcom/android/internal/os/ProcessStats;->mCpuSpeeds:[J

    .line 568
    .local v6, "tempSpeeds":[J
    const/16 v0, 0x3c

    .line 569
    .local v0, "MAX_SPEEDS":I
    if-nez p1, :cond_0

    .line 570
    const/16 v11, 0x3c

    new-array v7, v11, [J

    .line 571
    const/16 v11, 0x3c

    new-array v6, v11, [J

    .line 573
    :cond_0
    const/4 v4, 0x0

    .line 574
    .local v4, "speed":I
    new-instance v1, Ljava/io/File;

    const-string v11, "/sys/bus/cpu/devices/cpu0/cpufreq/stats/time_in_state"

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 576
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 577
    const-string v11, "/sys/bus/cpu/devices/cpu0/cpufreq/stats/time_in_state"

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/android/internal/os/ProcessStats;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    .line 582
    .local v2, "file":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_2

    .line 583
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v11, "\n "

    invoke-direct {v5, v2, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    .local v5, "st":Ljava/util/StringTokenizer;
    :cond_1
    :goto_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 585
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 587
    .local v8, "token":Ljava/lang/String;
    :try_start_0
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 588
    .local v9, "val":J
    aput-wide v9, v6, v4

    .line 589
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 590
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 591
    aput-wide v9, v7, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    add-int/lit8 v4, v4, 0x1

    .line 593
    const/16 v11, 0x3c

    if-ne v4, v11, :cond_1

    .line 603
    .end local v5    # "st":Ljava/util/StringTokenizer;
    .end local v8    # "token":Ljava/lang/String;
    .end local v9    # "val":J
    :cond_2
    if-nez p1, :cond_3

    .line 604
    new-array p1, v4, [J

    .line 605
    new-array v11, v4, [J

    iput-object v11, p0, Lcom/android/internal/os/ProcessStats;->mCpuSpeeds:[J

    .line 606
    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/internal/os/ProcessStats;->mCpuSpeeds:[J

    const/4 v13, 0x0

    invoke-static {v6, v11, v12, v13, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 607
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v7, v11, p1, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 609
    :cond_3
    return-object p1

    .line 579
    .end local v2    # "file":Ljava/lang/String;
    :cond_4
    const-string v11, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/android/internal/os/ProcessStats;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "file":Ljava/lang/String;
    goto :goto_0

    .line 598
    .restart local v5    # "st":Ljava/util/StringTokenizer;
    .restart local v8    # "token":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 599
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    const-string v11, "ProcessStats"

    const-string v12, "Unable to parse time_in_state"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getName(Lcom/android/internal/os/ProcessStats$Stats;Ljava/lang/String;)V
    .locals 5
    .param p1, "st"    # Lcom/android/internal/os/ProcessStats$Stats;
    .param p2, "cmdlineFile"    # Ljava/lang/String;

    .prologue
    .line 915
    iget-object v2, p1, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 916
    .local v2, "newName":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    const-string v4, "app_process"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    const-string v4, "<pre-initialized>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 918
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/android/internal/os/ProcessStats;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 919
    .local v0, "cmdName":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 920
    move-object v2, v0

    .line 921
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 922
    .local v1, "i":I
    if-lez v1, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 923
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 926
    .end local v1    # "i":I
    :cond_1
    if-nez v2, :cond_2

    .line 927
    iget-object v2, p1, Lcom/android/internal/os/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 930
    .end local v0    # "cmdName":Ljava/lang/String;
    :cond_2
    iget-object v3, p1, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 931
    :cond_3
    iput-object v2, p1, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 932
    iget-object v3, p1, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/os/ProcessStats;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v3

    iput v3, p1, Lcom/android/internal/os/ProcessStats$Stats;->nameWidth:I

    .line 934
    :cond_4
    return-void
.end method

.method private printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "totalTime"    # I
    .param p6, "user"    # I
    .param p7, "system"    # I
    .param p8, "iowait"    # I
    .param p9, "irq"    # I
    .param p10, "softIrq"    # I
    .param p11, "minFaults"    # I
    .param p12, "majFaults"    # I

    .prologue
    .line 835
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 836
    if-nez p5, :cond_0

    const/4 p5, 0x1

    .line 837
    :cond_0
    add-int v1, p6, p7

    add-int/2addr v1, p8

    add-int v1, v1, p9

    add-int v1, v1, p10

    int-to-long v3, v1

    int-to-long v5, p5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 838
    const-string v1, "% "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 839
    if-ltz p3, :cond_1

    .line 840
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 841
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 843
    :cond_1
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 844
    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 845
    int-to-long v3, p6

    int-to-long v5, p5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 846
    const-string v1, "% user + "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 847
    int-to-long v3, p7

    int-to-long v5, p5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 848
    const-string v1, "% kernel"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 849
    if-lez p8, :cond_2

    .line 850
    const-string v1, " + "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 851
    int-to-long v3, p8

    int-to-long v5, p5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 852
    const-string v1, "% iowait"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 854
    :cond_2
    if-lez p9, :cond_3

    .line 855
    const-string v1, " + "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 856
    move/from16 v0, p9

    int-to-long v3, v0

    int-to-long v5, p5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 857
    const-string v1, "% irq"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 859
    :cond_3
    if-lez p10, :cond_4

    .line 860
    const-string v1, " + "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 861
    move/from16 v0, p10

    int-to-long v3, v0

    int-to-long v5, p5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 862
    const-string v1, "% softirq"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 864
    :cond_4
    if-gtz p11, :cond_5

    if-lez p12, :cond_7

    .line 865
    :cond_5
    const-string v1, " / faults:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 866
    if-lez p11, :cond_6

    .line 867
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 868
    move/from16 v0, p11

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 869
    const-string v1, " minor"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 871
    :cond_6
    if-lez p12, :cond_7

    .line 872
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 873
    move/from16 v0, p12

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 874
    const-string v1, " major"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 877
    :cond_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 878
    return-void
.end method

.method private printRatio(Ljava/io/PrintWriter;JJ)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "numerator"    # J
    .param p4, "denominator"    # J

    .prologue
    const-wide/16 v8, 0xa

    .line 820
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, p2

    div-long v4, v6, p4

    .line 821
    .local v4, "thousands":J
    div-long v0, v4, v8

    .line 822
    .local v0, "hundreds":J
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 823
    cmp-long v6, v0, v8

    if-gez v6, :cond_0

    .line 824
    mul-long v6, v0, v8

    sub-long v2, v4, v6

    .line 825
    .local v2, "remainder":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    .line 826
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 827
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 830
    .end local v2    # "remainder":J
    :cond_0
    return-void
.end method

.method private readFile(Ljava/lang/String;C)Ljava/lang/String;
    .locals 8
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "endChar"    # C

    .prologue
    .line 884
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 885
    .local v4, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v1, 0x0

    .line 887
    .local v1, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    .end local v1    # "is":Ljava/io/FileInputStream;
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/os/ProcessStats;->mBuffer:[B

    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 889
    .local v3, "len":I
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 891
    if-lez v3, :cond_3

    .line 893
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 894
    iget-object v5, p0, Lcom/android/internal/os/ProcessStats;->mBuffer:[B

    aget-byte v5, v5, v0

    if-ne v5, p2, :cond_2

    .line 898
    :cond_0
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/os/ProcessStats;->mBuffer:[B

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, v0}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 903
    if-eqz v2, :cond_1

    .line 905
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 909
    :cond_1
    :goto_1
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v1, v2

    .line 911
    .end local v0    # "i":I
    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local v3    # "len":I
    .restart local v1    # "is":Ljava/io/FileInputStream;
    :goto_2
    return-object v5

    .line 893
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "i":I
    .restart local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "len":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 903
    .end local v0    # "i":I
    :cond_3
    if-eqz v2, :cond_4

    .line 905
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 909
    :cond_4
    :goto_3
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v1, v2

    .line 911
    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local v3    # "len":I
    .restart local v1    # "is":Ljava/io/FileInputStream;
    :goto_4
    const/4 v5, 0x0

    goto :goto_2

    .line 900
    :catch_0
    move-exception v5

    .line 903
    :goto_5
    if-eqz v1, :cond_5

    .line 905
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 909
    :cond_5
    :goto_6
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_4

    .line 901
    :catch_1
    move-exception v5

    .line 903
    :goto_7
    if-eqz v1, :cond_6

    .line 905
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 909
    :cond_6
    :goto_8
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_4

    .line 903
    :catchall_0
    move-exception v5

    :goto_9
    if-eqz v1, :cond_7

    .line 905
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 909
    :cond_7
    :goto_a
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v5

    .line 906
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "i":I
    .restart local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "len":I
    :catch_2
    move-exception v6

    goto :goto_1

    .end local v0    # "i":I
    :catch_3
    move-exception v5

    goto :goto_3

    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local v3    # "len":I
    .restart local v1    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v5

    goto :goto_6

    :catch_5
    move-exception v5

    goto :goto_8

    :catch_6
    move-exception v6

    goto :goto_a

    .line 903
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    goto :goto_9

    .line 901
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_7
    move-exception v5

    move-object v1, v2

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    goto :goto_7

    .line 900
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_8
    move-exception v5

    move-object v1, v2

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    goto :goto_5
.end method


# virtual methods
.method final buildWorkingProcs()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 645
    iget-boolean v6, p0, Lcom/android/internal/os/ProcessStats;->mWorkingProcsSorted:Z

    if-nez v6, :cond_4

    .line 646
    iget-object v6, p0, Lcom/android/internal/os/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 647
    iget-object v6, p0, Lcom/android/internal/os/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 648
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 649
    iget-object v6, p0, Lcom/android/internal/os/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/ProcessStats$Stats;

    .line 650
    .local v4, "stats":Lcom/android/internal/os/ProcessStats$Stats;
    iget-boolean v6, v4, Lcom/android/internal/os/ProcessStats$Stats;->working:Z

    if-eqz v6, :cond_2

    .line 651
    iget-object v6, p0, Lcom/android/internal/os/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    iget-object v6, v4, Lcom/android/internal/os/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    iget-object v6, v4, Lcom/android/internal/os/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v8, :cond_2

    .line 653
    iget-object v6, v4, Lcom/android/internal/os/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 654
    iget-object v6, v4, Lcom/android/internal/os/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 655
    .local v0, "M":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 656
    iget-object v6, v4, Lcom/android/internal/os/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/ProcessStats$Stats;

    .line 657
    .local v5, "tstats":Lcom/android/internal/os/ProcessStats$Stats;
    iget-boolean v6, v5, Lcom/android/internal/os/ProcessStats$Stats;->working:Z

    if-eqz v6, :cond_0

    .line 658
    iget-object v6, v4, Lcom/android/internal/os/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 661
    .end local v5    # "tstats":Lcom/android/internal/os/ProcessStats$Stats;
    :cond_1
    iget-object v6, v4, Lcom/android/internal/os/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/internal/os/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 648
    .end local v0    # "M":I
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 665
    .end local v4    # "stats":Lcom/android/internal/os/ProcessStats$Stats;
    :cond_3
    iget-object v6, p0, Lcom/android/internal/os/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/internal/os/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 666
    iput-boolean v8, p0, Lcom/android/internal/os/ProcessStats;->mWorkingProcsSorted:Z

    .line 668
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method public final countStats()I
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/internal/os/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final countWorkingStats()I
    .locals 1

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessStats;->buildWorkingProcs()V

    .line 680
    iget-object v0, p0, Lcom/android/internal/os/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCpuTimeForPid(I)J
    .locals 8
    .param p1, "pid"    # I

    .prologue
    const/4 v6, 0x0

    .line 531
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/proc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/stat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, "statFile":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/os/ProcessStats;->mSinglePidStatsData:[J

    .line 533
    .local v1, "statsData":[J
    sget-object v4, Lcom/android/internal/os/ProcessStats;->PROCESS_STATS_FORMAT:[I

    invoke-static {v0, v4, v6, v1, v6}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 535
    const/4 v4, 0x2

    aget-wide v4, v1, v4

    const/4 v6, 0x3

    aget-wide v6, v1, v6

    add-long v2, v4, v6

    .line 539
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getLastCpuSpeedTimes()[J
    .locals 8

    .prologue
    .line 548
    iget-object v3, p0, Lcom/android/internal/os/ProcessStats;->mCpuSpeedTimes:[J

    if-nez v3, :cond_0

    .line 549
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/internal/os/ProcessStats;->getCpuSpeedTimes([J)[J

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/os/ProcessStats;->mCpuSpeedTimes:[J

    .line 550
    iget-object v3, p0, Lcom/android/internal/os/ProcessStats;->mCpuSpeedTimes:[J

    array-length v3, v3

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/android/internal/os/ProcessStats;->mRelCpuSpeedTimes:[J

    .line 551
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/os/ProcessStats;->mCpuSpeedTimes:[J

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 552
    iget-object v3, p0, Lcom/android/internal/os/ProcessStats;->mRelCpuSpeedTimes:[J

    const-wide/16 v4, 0x1

    aput-wide v4, v3, v0

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 555
    .end local v0    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/android/internal/os/ProcessStats;->mRelCpuSpeedTimes:[J

    invoke-direct {p0, v3}, Lcom/android/internal/os/ProcessStats;->getCpuSpeedTimes([J)[J

    .line 556
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/os/ProcessStats;->mCpuSpeedTimes:[J

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 557
    iget-object v3, p0, Lcom/android/internal/os/ProcessStats;->mRelCpuSpeedTimes:[J

    aget-wide v1, v3, v0

    .line 558
    .local v1, "temp":J
    iget-object v3, p0, Lcom/android/internal/os/ProcessStats;->mRelCpuSpeedTimes:[J

    aget-wide v4, v3, v0

    iget-object v6, p0, Lcom/android/internal/os/ProcessStats;->mCpuSpeedTimes:[J

    aget-wide v6, v6, v0

    sub-long/2addr v4, v6

    aput-wide v4, v3, v0

    .line 559
    iget-object v3, p0, Lcom/android/internal/os/ProcessStats;->mCpuSpeedTimes:[J

    aput-wide v1, v3, v0

    .line 556
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 562
    .end local v1    # "temp":J
    :cond_1
    iget-object v3, p0, Lcom/android/internal/os/ProcessStats;->mRelCpuSpeedTimes:[J

    return-object v3
.end method

.method public final getLastIdleTime()I
    .locals 1

    .prologue
    .line 633
    iget v0, p0, Lcom/android/internal/os/ProcessStats;->mRelIdleTime:I

    return v0
.end method

.method public final getLastIoWaitTime()I
    .locals 1

    .prologue
    .line 621
    iget v0, p0, Lcom/android/internal/os/ProcessStats;->mRelIoWaitTime:I

    return v0
.end method

.method public final getLastIrqTime()I
    .locals 1

    .prologue
    .line 625
    iget v0, p0, Lcom/android/internal/os/ProcessStats;->mRelIrqTime:I

    return v0
.end method

.method public final getLastSoftIrqTime()I
    .locals 1

    .prologue
    .line 629
    iget v0, p0, Lcom/android/internal/os/ProcessStats;->mRelSoftIrqTime:I

    return v0
.end method

.method public final getLastSystemTime()I
    .locals 1

    .prologue
    .line 617
    iget v0, p0, Lcom/android/internal/os/ProcessStats;->mRelSystemTime:I

    return v0
.end method

.method public final getLastUserTime()I
    .locals 1

    .prologue
    .line 613
    iget v0, p0, Lcom/android/internal/os/ProcessStats;->mRelUserTime:I

    return v0
.end method

.method public final getStats(I)Lcom/android/internal/os/ProcessStats$Stats;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/internal/os/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessStats$Stats;

    return-object v0
.end method

.method public final getTotalCpuPercent()F
    .locals 3

    .prologue
    .line 637
    iget v1, p0, Lcom/android/internal/os/ProcessStats;->mRelUserTime:I

    iget v2, p0, Lcom/android/internal/os/ProcessStats;->mRelSystemTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/os/ProcessStats;->mRelIrqTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/os/ProcessStats;->mRelIdleTime:I

    add-int v0, v1, v2

    .line 638
    .local v0, "denom":I
    if-gtz v0, :cond_0

    .line 639
    const/4 v1, 0x0

    .line 641
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/internal/os/ProcessStats;->mRelUserTime:I

    iget v2, p0, Lcom/android/internal/os/ProcessStats;->mRelSystemTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/os/ProcessStats;->mRelIrqTime:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0
.end method

.method public final getWorkingStats(I)Lcom/android/internal/os/ProcessStats$Stats;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/internal/os/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessStats$Stats;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ProcessStats;->mFirst:Z

    .line 276
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessStats;->update()V

    .line 277
    return-void
.end method

.method public onLoadChanged(FFF)V
    .locals 0
    .param p1, "load1"    # F
    .param p2, "load5"    # F
    .param p3, "load15"    # F

    .prologue
    .line 267
    return-void
.end method

.method public onMeasureProcessName(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public final printCurrentLoad()Ljava/lang/String;
    .locals 3

    .prologue
    .line 688
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 689
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 690
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v2, "Load: "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 691
    iget v2, p0, Lcom/android/internal/os/ProcessStats;->mLoad1:F

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 692
    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 693
    iget v2, p0, Lcom/android/internal/os/ProcessStats;->mLoad5:F

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 694
    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 695
    iget v2, p0, Lcom/android/internal/os/ProcessStats;->mLoad15:F

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 696
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final printCurrentState(J)Ljava/lang/String;
    .locals 32
    .param p1, "now"    # J

    .prologue
    .line 733
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/ProcessStats;->buildWorkingProcs()V

    .line 735
    new-instance v29, Ljava/io/StringWriter;

    invoke-direct/range {v29 .. v29}, Ljava/io/StringWriter;-><init>()V

    .line 736
    .local v29, "sw":Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    move-object/from16 v0, v29

    invoke-direct {v3, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 738
    .local v3, "pw":Ljava/io/PrintWriter;
    const-string v2, "CPU usage from "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 739
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessStats;->mLastSampleTime:J

    cmp-long v2, p1, v4

    if-lez v2, :cond_5

    .line 740
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessStats;->mLastSampleTime:J

    sub-long v4, p1, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 741
    const-string/jumbo v2, "ms to "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 742
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessStats;->mCurrentSampleTime:J

    sub-long v4, p1, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 743
    const-string/jumbo v2, "ms ago"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 751
    :goto_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessStats;->mCurrentSampleTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/ProcessStats;->mLastSampleTime:J

    sub-long v26, v4, v6

    .line 752
    .local v26, "sampleTime":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessStats;->mCurrentSampleRealTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/ProcessStats;->mLastSampleRealTime:J

    sub-long v24, v4, v6

    .line 753
    .local v24, "sampleRealTime":J
    const-wide/16 v4, 0x0

    cmp-long v2, v24, v4

    if-lez v2, :cond_6

    const-wide/16 v4, 0x64

    mul-long v4, v4, v26

    div-long v22, v4, v24

    .line 754
    .local v22, "percAwake":J
    :goto_1
    const-wide/16 v4, 0x64

    cmp-long v2, v22, v4

    if-eqz v2, :cond_0

    .line 755
    const-string v2, " with "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 756
    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 757
    const-string v2, "% awake"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 759
    :cond_0
    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 761
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/os/ProcessStats;->mRelUserTime:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessStats;->mRelSystemTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessStats;->mRelIoWaitTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessStats;->mRelIrqTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessStats;->mRelSoftIrqTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessStats;->mRelIdleTime:I

    add-int v30, v2, v4

    .line 767
    .local v30, "totalTime":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 769
    .local v16, "N":I
    const/16 v19, -0x1

    .line 771
    .local v19, "dumpPid":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_2
    move/from16 v0, v20

    move/from16 v1, v16

    if-ge v0, v1, :cond_c

    .line 772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/os/ProcessStats$Stats;

    .line 775
    .local v28, "st":Lcom/android/internal/os/ProcessStats$Stats;
    move-object/from16 v0, v28

    iget-wide v4, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_uptime:J

    const-wide/16 v6, 0x5

    add-long/2addr v4, v6

    long-to-int v2, v4

    div-int/lit8 v17, v2, 0xa

    .line 776
    .local v17, "ProcessTotalTome":I
    if-nez v17, :cond_1

    const/16 v17, 0x1

    .line 778
    :cond_1
    move-object/from16 v0, v28

    iget v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    mul-int/lit8 v2, v2, 0x64

    div-int v2, v2, v17

    const/16 v4, 0x32

    if-le v2, v4, :cond_2

    .line 779
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/os/ProcessStats$Stats;->pid:I

    move/from16 v19, v0

    .line 782
    :cond_2
    move-object/from16 v0, v28

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->added:Z

    if-eqz v2, :cond_7

    const-string v4, " +"

    :goto_3
    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/internal/os/ProcessStats$Stats;->pid:I

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-wide v7, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_uptime:J

    const-wide/16 v9, 0x5

    add-long/2addr v7, v9

    long-to-int v2, v7

    div-int/lit8 v7, v2, 0xa

    move-object/from16 v0, v28

    iget v8, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    move-object/from16 v0, v28

    iget v9, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v28

    iget v13, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_minfaults:I

    move-object/from16 v0, v28

    iget v14, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_majfaults:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v14}, Lcom/android/internal/os/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 785
    move-object/from16 v0, v28

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->removed:Z

    if-nez v2, :cond_b

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    if-eqz v2, :cond_b

    .line 786
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 787
    .local v15, "M":I
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_4
    move/from16 v0, v21

    if-ge v0, v15, :cond_b

    .line 788
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/os/ProcessStats$Stats;

    .line 791
    .local v31, "tst":Lcom/android/internal/os/ProcessStats$Stats;
    move-object/from16 v0, v28

    iget-wide v4, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_uptime:J

    const-wide/16 v6, 0x5

    add-long/2addr v4, v6

    long-to-int v2, v4

    div-int/lit8 v18, v2, 0xa

    .line 792
    .local v18, "ThreadTotalTome":I
    if-nez v18, :cond_3

    const/16 v18, 0x1

    .line 794
    :cond_3
    move-object/from16 v0, v31

    iget v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    mul-int/lit8 v2, v2, 0x64

    div-int v2, v2, v18

    const/16 v4, 0x32

    if-le v2, v4, :cond_4

    .line 795
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/os/ProcessStats$Stats;->pid:I

    move/from16 v19, v0

    .line 798
    :cond_4
    move-object/from16 v0, v31

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->added:Z

    if-eqz v2, :cond_9

    const-string v4, "   +"

    :goto_5
    move-object/from16 v0, v31

    iget v5, v0, Lcom/android/internal/os/ProcessStats$Stats;->pid:I

    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-wide v7, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_uptime:J

    const-wide/16 v9, 0x5

    add-long/2addr v7, v9

    long-to-int v2, v7

    div-int/lit8 v7, v2, 0xa

    move-object/from16 v0, v31

    iget v8, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    move-object/from16 v0, v31

    iget v9, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v14}, Lcom/android/internal/os/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 787
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 745
    .end local v15    # "M":I
    .end local v16    # "N":I
    .end local v17    # "ProcessTotalTome":I
    .end local v18    # "ThreadTotalTome":I
    .end local v19    # "dumpPid":I
    .end local v20    # "i":I
    .end local v21    # "j":I
    .end local v22    # "percAwake":J
    .end local v24    # "sampleRealTime":J
    .end local v26    # "sampleTime":J
    .end local v28    # "st":Lcom/android/internal/os/ProcessStats$Stats;
    .end local v30    # "totalTime":I
    .end local v31    # "tst":Lcom/android/internal/os/ProcessStats$Stats;
    :cond_5
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessStats;->mLastSampleTime:J

    sub-long v4, v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 746
    const-string/jumbo v2, "ms to "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 747
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessStats;->mCurrentSampleTime:J

    sub-long v4, v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 748
    const-string/jumbo v2, "ms later"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 753
    .restart local v24    # "sampleRealTime":J
    .restart local v26    # "sampleTime":J
    :cond_6
    const-wide/16 v22, 0x0

    goto/16 :goto_1

    .line 782
    .restart local v16    # "N":I
    .restart local v17    # "ProcessTotalTome":I
    .restart local v19    # "dumpPid":I
    .restart local v20    # "i":I
    .restart local v22    # "percAwake":J
    .restart local v28    # "st":Lcom/android/internal/os/ProcessStats$Stats;
    .restart local v30    # "totalTime":I
    :cond_7
    move-object/from16 v0, v28

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->removed:Z

    if-eqz v2, :cond_8

    const-string v4, " -"

    goto/16 :goto_3

    :cond_8
    const-string v4, "  "

    goto/16 :goto_3

    .line 798
    .restart local v15    # "M":I
    .restart local v18    # "ThreadTotalTome":I
    .restart local v21    # "j":I
    .restart local v31    # "tst":Lcom/android/internal/os/ProcessStats$Stats;
    :cond_9
    move-object/from16 v0, v31

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->removed:Z

    if-eqz v2, :cond_a

    const-string v4, "   -"

    goto :goto_5

    :cond_a
    const-string v4, "    "

    goto :goto_5

    .line 771
    .end local v15    # "M":I
    .end local v18    # "ThreadTotalTome":I
    .end local v21    # "j":I
    .end local v31    # "tst":Lcom/android/internal/os/ProcessStats$Stats;
    :cond_b
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_2

    .line 806
    .end local v17    # "ProcessTotalTome":I
    .end local v28    # "st":Lcom/android/internal/os/ProcessStats$Stats;
    :cond_c
    const-string v4, ""

    const/4 v5, -0x1

    const-string v6, "TOTAL"

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/os/ProcessStats;->mRelUserTime:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/os/ProcessStats;->mRelSystemTime:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/os/ProcessStats;->mRelIoWaitTime:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/os/ProcessStats;->mRelIrqTime:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/os/ProcessStats;->mRelSoftIrqTime:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move/from16 v7, v30

    invoke-direct/range {v2 .. v14}, Lcom/android/internal/os/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 810
    if-lez v19, :cond_d

    .line 811
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dump kernel call stack, pid = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 812
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/android/internal/os/ProcessStats;->dumpKernelStack(Ljava/io/PrintWriter;I)V

    .line 816
    :cond_d
    invoke-virtual/range {v29 .. v29}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public update()V
    .locals 26

    .prologue
    .line 281
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mCurrentSampleTime:J

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mLastSampleTime:J

    .line 282
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mCurrentSampleTime:J

    .line 283
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mCurrentSampleRealTime:J

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mLastSampleRealTime:J

    .line 284
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mCurrentSampleRealTime:J

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessStats;->mSystemCpuData:[J

    move-object/from16 v21, v0

    .line 287
    .local v21, "sysCpu":[J
    const-string v3, "/proc/stat"

    sget-object v4, Lcom/android/internal/os/ProcessStats;->SYSTEM_CPU_FORMAT:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-static {v3, v4, v5, v0, v6}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    const/4 v3, 0x0

    aget-wide v3, v21, v3

    const/4 v5, 0x1

    aget-wide v5, v21, v5

    add-long v24, v3, v5

    .line 292
    .local v24, "usertime":J
    const/4 v3, 0x2

    aget-wide v22, v21, v3

    .line 294
    .local v22, "systemtime":J
    const/4 v3, 0x3

    aget-wide v9, v21, v3

    .line 296
    .local v9, "idletime":J
    const/4 v3, 0x4

    aget-wide v11, v21, v3

    .line 297
    .local v11, "iowaittime":J
    const/4 v3, 0x5

    aget-wide v13, v21, v3

    .line 298
    .local v13, "irqtime":J
    const/4 v3, 0x6

    aget-wide v19, v21, v3

    .line 300
    .local v19, "softirqtime":J
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mBaseUserTime:J

    sub-long v3, v24, v3

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/ProcessStats;->mRelUserTime:I

    .line 301
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mBaseSystemTime:J

    sub-long v3, v22, v3

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/ProcessStats;->mRelSystemTime:I

    .line 302
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mBaseIoWaitTime:J

    sub-long v3, v11, v3

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/ProcessStats;->mRelIoWaitTime:I

    .line 303
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mBaseIrqTime:J

    sub-long v3, v13, v3

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/ProcessStats;->mRelIrqTime:I

    .line 304
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mBaseSoftIrqTime:J

    sub-long v3, v19, v3

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/ProcessStats;->mRelSoftIrqTime:I

    .line 305
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mBaseIdleTime:J

    sub-long v3, v9, v3

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/ProcessStats;->mRelIdleTime:I

    .line 316
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/ProcessStats;->mBaseUserTime:J

    .line 317
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/ProcessStats;->mBaseSystemTime:J

    .line 318
    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/android/internal/os/ProcessStats;->mBaseIoWaitTime:J

    .line 319
    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/internal/os/ProcessStats;->mBaseIrqTime:J

    .line 320
    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/ProcessStats;->mBaseSoftIrqTime:J

    .line 321
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/internal/os/ProcessStats;->mBaseIdleTime:J

    .line 324
    .end local v9    # "idletime":J
    .end local v11    # "iowaittime":J
    .end local v13    # "irqtime":J
    .end local v19    # "softirqtime":J
    .end local v22    # "systemtime":J
    .end local v24    # "usertime":J
    :cond_0
    const-string v4, "/proc"

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/os/ProcessStats;->mFirst:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/ProcessStats;->mCurPids:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/ProcessStats;->mCurPids:[I

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessStats;->mLoadAverageData:[F

    move-object/from16 v18, v0

    .line 327
    .local v18, "loadAverages":[F
    const-string v3, "/proc/loadavg"

    sget-object v4, Lcom/android/internal/os/ProcessStats;->LOAD_AVERAGE_FORMAT:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-static {v3, v4, v5, v6, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 329
    const/4 v3, 0x0

    aget v15, v18, v3

    .line 330
    .local v15, "load1":F
    const/4 v3, 0x1

    aget v17, v18, v3

    .line 331
    .local v17, "load5":F
    const/4 v3, 0x2

    aget v16, v18, v3

    .line 332
    .local v16, "load15":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/ProcessStats;->mLoad1:F

    cmpl-float v3, v15, v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/ProcessStats;->mLoad5:F

    cmpl-float v3, v17, v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/ProcessStats;->mLoad15:F

    cmpl-float v3, v16, v3

    if-eqz v3, :cond_2

    .line 333
    :cond_1
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/os/ProcessStats;->mLoad1:F

    .line 334
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/ProcessStats;->mLoad5:F

    .line 335
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/ProcessStats;->mLoad15:F

    .line 336
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/internal/os/ProcessStats;->onLoadChanged(FFF)V

    .line 343
    .end local v15    # "load1":F
    .end local v16    # "load15":F
    .end local v17    # "load5":F
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats;->mWorkingProcsSorted:Z

    .line 344
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats;->mFirst:Z

    .line 345
    return-void
.end method
