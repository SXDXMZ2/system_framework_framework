.class public Landroid/appwidget/AppWidgetHost;
.super Ljava/lang/Object;
.source "AppWidgetHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetHost$UpdateHandler;,
        Landroid/appwidget/AppWidgetHost$Callbacks;
    }
.end annotation


# static fields
.field static final HANDLE_PROVIDERS_CHANGED:I = 0x3

.field static final HANDLE_PROVIDER_CHANGED:I = 0x2

.field static final HANDLE_UPDATE:I = 0x1

.field static final HANDLE_VIEW_DATA_CHANGED:I = 0x4

.field static sService:Lcom/android/internal/appwidget/IAppWidgetService;

.field static final sServiceLock:Ljava/lang/Object;


# instance fields
.field mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

.field mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mHandler:Landroid/os/Handler;

.field mHostId:I

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field mPackageName:Ljava/lang/String;

.field final mViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/appwidget/AppWidgetHostView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/appwidget/AppWidgetHost;->sServiceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostId"    # I

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews$OnClickHandler;Landroid/os/Looper;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/widget/RemoteViews$OnClickHandler;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostId"    # I
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;
    .param p4, "looper"    # Landroid/os/Looper;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/appwidget/AppWidgetHost$Callbacks;

    invoke-direct {v0, p0}, Landroid/appwidget/AppWidgetHost$Callbacks;-><init>(Landroid/appwidget/AppWidgetHost;)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    .line 131
    iput-object p1, p0, Landroid/appwidget/AppWidgetHost;->mContext:Landroid/content/Context;

    .line 132
    iput p2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    .line 133
    iput-object p3, p0, Landroid/appwidget/AppWidgetHost;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 134
    new-instance v0, Landroid/appwidget/AppWidgetHost$UpdateHandler;

    invoke-direct {v0, p0, p4}, Landroid/appwidget/AppWidgetHost$UpdateHandler;-><init>(Landroid/appwidget/AppWidgetHost;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mHandler:Landroid/os/Handler;

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 136
    invoke-static {}, Landroid/appwidget/AppWidgetHost;->bindService()V

    .line 137
    return-void
.end method

.method static synthetic access$000(Landroid/appwidget/AppWidgetHost;)Z
    .locals 1
    .param p0, "x0"    # Landroid/appwidget/AppWidgetHost;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHost;->isLocalBinder()Z

    move-result v0

    return v0
.end method

.method public static allocateAppWidgetIdForSystem(II)I
    .locals 5
    .param p0, "hostId"    # I
    .param p1, "userId"    # I

    .prologue
    .line 220
    invoke-static {}, Landroid/appwidget/AppWidgetHost;->checkCallerIsSystem()V

    .line 222
    :try_start_0
    sget-object v3, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v3, :cond_0

    .line 223
    invoke-static {}, Landroid/appwidget/AppWidgetHost;->bindService()V

    .line 225
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v2

    .line 227
    .local v2, "systemContext":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "packageName":Ljava/lang/String;
    sget-object v3, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v3, v1, p0, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->allocateAppWidgetId(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 229
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "systemContext":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "system server dead?"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static bindService()V
    .locals 3

    .prologue
    .line 141
    sget-object v2, Landroid/appwidget/AppWidgetHost;->sServiceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 142
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v1, :cond_0

    .line 143
    const-string v1, "appwidget"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 144
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v1

    sput-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    .line 146
    :cond_0
    monitor-exit v2

    .line 147
    return-void

    .line 146
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static checkCallerIsSystem()V
    .locals 4

    .prologue
    .line 251
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 252
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    .line 253
    :cond_0
    return-void

    .line 255
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disallowed call for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static deleteAllHosts()V
    .locals 1

    .prologue
    .line 319
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetHost;->deleteAllHosts(I)V

    .line 320
    return-void
.end method

.method public static deleteAllHosts(I)V
    .locals 3
    .param p0, "userId"    # I

    .prologue
    .line 328
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p0}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteAllHosts(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static deleteAppWidgetIdForSystem(II)V
    .locals 3
    .param p0, "appWidgetId"    # I
    .param p1, "userId"    # I

    .prologue
    .line 282
    invoke-static {}, Landroid/appwidget/AppWidgetHost;->checkCallerIsSystem()V

    .line 284
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v1, :cond_0

    .line 285
    invoke-static {}, Landroid/appwidget/AppWidgetHost;->bindService()V

    .line 287
    :cond_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p0, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteAppWidgetId(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private isLocalBinder()Z
    .locals 2

    .prologue
    .line 259
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public allocateAppWidgetId()I
    .locals 5

    .prologue
    .line 203
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 204
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/appwidget/AppWidgetHost;->mPackageName:Ljava/lang/String;

    .line 206
    :cond_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mPackageName:Ljava/lang/String;

    iget v3, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    iget-object v4, p0, Landroid/appwidget/AppWidgetHost;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/appwidget/IAppWidgetService;->allocateAppWidgetId(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected clearViews()V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 431
    return-void
.end method

.method public final createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 341
    iget-object v4, p0, Landroid/appwidget/AppWidgetHost;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 342
    .local v1, "userId":I
    iget-object v4, p0, Landroid/appwidget/AppWidgetHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4, p2, p3}, Landroid/appwidget/AppWidgetHost;->onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v2

    .line 343
    .local v2, "view":Landroid/appwidget/AppWidgetHostView;
    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetHostView;->setUserId(I)V

    .line 344
    iget-object v4, p0, Landroid/appwidget/AppWidgetHost;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v2, v4}, Landroid/appwidget/AppWidgetHostView;->setOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 345
    invoke-virtual {v2, p2, p3}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 346
    iget-object v5, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    monitor-enter v5

    .line 347
    :try_start_0
    iget-object v4, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    :try_start_1
    sget-object v4, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v4, p2, v1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetViews(II)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 352
    .local v3, "views":Landroid/widget/RemoteViews;
    if-eqz v3, :cond_0

    .line 353
    new-instance v4, Landroid/os/UserHandle;

    iget-object v5, p0, Landroid/appwidget/AppWidgetHost;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/RemoteViews;->setUser(Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 358
    :cond_0
    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 360
    return-object v2

    .line 348
    .end local v3    # "views":Landroid/widget/RemoteViews;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "system server dead?"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public deleteAppWidgetId(I)V
    .locals 4
    .param p1, "appWidgetId"    # I

    .prologue
    .line 266
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    monitor-enter v2

    .line 267
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    :try_start_1
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v3, p0, Landroid/appwidget/AppWidgetHost;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v1, p1, v3}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteAppWidgetId(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    :try_start_2
    monitor-exit v2

    .line 275
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "system server dead?"

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 274
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public deleteHost()V
    .locals 4

    .prologue
    .line 303
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    iget-object v3, p0, Landroid/appwidget/AppWidgetHost;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteHost(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAppWidgetIds()[I
    .locals 4

    .prologue
    .line 241
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v1, :cond_0

    .line 242
    invoke-static {}, Landroid/appwidget/AppWidgetHost;->bindService()V

    .line 244
    :cond_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    iget-object v3, p0, Landroid/appwidget/AppWidgetHost;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetIdsForHost(II)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 369
    new-instance v0, Landroid/appwidget/AppWidgetHostView;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct {v0, p1, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;Landroid/widget/RemoteViews$OnClickHandler;)V

    return-object v0
.end method

.method protected onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 4
    .param p1, "appWidgetId"    # I
    .param p2, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 381
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 383
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 385
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    .line 387
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    .line 390
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    monitor-enter v2

    .line 391
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 392
    .local v0, "v":Landroid/appwidget/AppWidgetHostView;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetHostView;->resetAppWidget(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 396
    :cond_0
    return-void

    .line 392
    .end local v0    # "v":Landroid/appwidget/AppWidgetHostView;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onProvidersChanged()V
    .locals 0

    .prologue
    .line 404
    return-void
.end method

.method public startListening()V
    .locals 10

    .prologue
    .line 155
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v4, "updatedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews;>;"
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v5

    .line 159
    .local v5, "userId":I
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost;->mPackageName:Ljava/lang/String;

    .line 162
    :cond_0
    sget-object v0, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mPackageName:Ljava/lang/String;

    iget v3, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/appwidget/IAppWidgetService;->startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;ILjava/util/List;I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 169
    .local v9, "updatedIds":[I
    array-length v6, v9

    .line 170
    .local v6, "N":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v6, :cond_2

    .line 171
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews;->setUser(Landroid/os/UserHandle;)V

    .line 174
    :cond_1
    aget v1, v9, v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0, v1, v0, v5}, Landroid/appwidget/AppWidgetHost;->updateAppWidgetView(ILandroid/widget/RemoteViews;I)V

    .line 170
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 165
    .end local v6    # "N":I
    .end local v8    # "i":I
    .end local v9    # "updatedIds":[I
    :catch_0
    move-exception v7

    .line 166
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "system server dead?"

    invoke-direct {v0, v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 176
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v6    # "N":I
    .restart local v8    # "i":I
    .restart local v9    # "updatedIds":[I
    :cond_2
    return-void
.end method

.method public stopListening()V
    .locals 4

    .prologue
    .line 184
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    iget-object v3, p0, Landroid/appwidget/AppWidgetHost;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService;->stopListening(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHost;->clearViews()V

    .line 193
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method updateAppWidgetView(ILandroid/widget/RemoteViews;I)V
    .locals 4
    .param p1, "appWidgetId"    # I
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .param p3, "userId"    # I

    .prologue
    .line 408
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    monitor-enter v2

    .line 409
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 410
    .local v0, "v":Landroid/appwidget/AppWidgetHostView;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 414
    :cond_0
    return-void

    .line 410
    .end local v0    # "v":Landroid/appwidget/AppWidgetHostView;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method viewDataChanged(III)V
    .locals 4
    .param p1, "appWidgetId"    # I
    .param p2, "viewId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 418
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    monitor-enter v2

    .line 419
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 420
    .local v0, "v":Landroid/appwidget/AppWidgetHostView;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetHostView;->viewDataChanged(I)V

    .line 424
    :cond_0
    return-void

    .line 420
    .end local v0    # "v":Landroid/appwidget/AppWidgetHostView;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
