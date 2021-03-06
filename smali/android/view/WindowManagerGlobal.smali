.class public final Landroid/view/WindowManagerGlobal;
.super Ljava/lang/Object;
.source "WindowManagerGlobal.java"


# static fields
.field public static final ADD_APP_EXITING:I = -0x4

.field public static final ADD_BAD_APP_TOKEN:I = -0x1

.field public static final ADD_BAD_SUBWINDOW_TOKEN:I = -0x2

.field public static final ADD_DUPLICATE_ADD:I = -0x5

.field public static final ADD_FLAG_APP_VISIBLE:I = 0x2

.field public static final ADD_FLAG_IN_TOUCH_MODE:I = 0x1

.field public static final ADD_INVALID_DISPLAY:I = -0x9

.field public static final ADD_MULTIPLE_SINGLETON:I = -0x7

.field public static final ADD_NOT_APP_TOKEN:I = -0x3

.field public static final ADD_OKAY:I = 0x0

.field public static final ADD_PERMISSION_DENIED:I = -0x8

.field public static final ADD_STARTING_NOT_NEEDED:I = -0x6

.field public static final RELAYOUT_DEFER_SURFACE_DESTROY:I = 0x2

.field public static final RELAYOUT_INSETS_PENDING:I = 0x1

.field public static final RELAYOUT_RES_ANIMATING:I = 0x8

.field public static final RELAYOUT_RES_FIRST_TIME:I = 0x2

.field public static final RELAYOUT_RES_IN_TOUCH_MODE:I = 0x1

.field public static final RELAYOUT_RES_SURFACE_CHANGED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

.field private static sWindowManagerService:Landroid/view/IWindowManager;

.field private static sWindowSession:Landroid/view/IWindowSession;


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mNeedsEglTerminate:Z

.field private mParams:[Landroid/view/WindowManager$LayoutParams;

.field private mRoots:[Landroid/view/ViewRootImpl;

.field private mSystemPropertyUpdater:Ljava/lang/Runnable;

.field private mViews:[Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    .line 118
    return-void
.end method

.method static synthetic access$000(Landroid/view/WindowManagerGlobal;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/view/WindowManagerGlobal;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/WindowManagerGlobal;)[Landroid/view/ViewRootImpl;
    .locals 1
    .param p0, "x0"    # Landroid/view/WindowManagerGlobal;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    return-object v0
.end method

.method private findViewLocked(Landroid/view/View;Z)I
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "required"    # Z

    .prologue
    .line 397
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    if-eqz v2, :cond_1

    .line 398
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    array-length v0, v2

    .line 399
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 400
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 408
    .end local v0    # "count":I
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 399
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 405
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    if-eqz p2, :cond_2

    .line 406
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "View not attached to window manager"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 408
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static getInstance()Landroid/view/WindowManagerGlobal;
    .locals 2

    .prologue
    .line 121
    const-class v1, Landroid/view/WindowManagerGlobal;

    monitor-enter v1

    .line 122
    :try_start_0
    sget-object v0, Landroid/view/WindowManagerGlobal;->sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Landroid/view/WindowManagerGlobal;

    invoke-direct {v0}, Landroid/view/WindowManagerGlobal;-><init>()V

    sput-object v0, Landroid/view/WindowManagerGlobal;->sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    .line 125
    :cond_0
    sget-object v0, Landroid/view/WindowManagerGlobal;->sDefaultWindowManager:Landroid/view/WindowManagerGlobal;

    monitor-exit v1

    return-object v0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getWindowManagerService()Landroid/view/IWindowManager;
    .locals 2

    .prologue
    .line 130
    const-class v1, Landroid/view/WindowManagerGlobal;

    monitor-enter v1

    .line 131
    :try_start_0
    sget-object v0, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    .line 132
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    sput-object v0, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    .line 135
    :cond_0
    sget-object v0, Landroid/view/WindowManagerGlobal;->sWindowManagerService:Landroid/view/IWindowManager;

    monitor-exit v1

    return-object v0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;
    .locals 2
    .param p0, "root"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWindowSession()Landroid/view/IWindowSession;
    .locals 7

    .prologue
    .line 140
    const-class v5, Landroid/view/WindowManagerGlobal;

    monitor-enter v5

    .line 141
    :try_start_0
    sget-object v4, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 143
    :try_start_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 144
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    .line 145
    .local v3, "windowManager":Landroid/view/IWindowManager;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getClient()Lcom/android/internal/view/IInputMethodClient;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getInputContext()Lcom/android/internal/view/IInputContext;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Landroid/view/IWindowManager;->openSession(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    move-result-object v4

    sput-object v4, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;

    .line 147
    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v0

    .line 148
    .local v0, "animatorScale":F
    invoke-static {v0}, Landroid/animation/ValueAnimator;->setDurationScale(F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    .end local v0    # "animatorScale":F
    .end local v3    # "windowManager":Landroid/view/IWindowManager;
    :cond_0
    :goto_0
    :try_start_2
    sget-object v4, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;

    monitor-exit v5

    return-object v4

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v6, "Failed to open window session"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 154
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public static peekWindowSession()Landroid/view/IWindowSession;
    .locals 2

    .prologue
    .line 158
    const-class v1, Landroid/view/WindowManagerGlobal;

    monitor-enter v1

    .line 159
    :try_start_0
    sget-object v0, Landroid/view/WindowManagerGlobal;->sWindowSession:Landroid/view/IWindowSession;

    monitor-exit v1

    return-object v0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static removeItem([Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 2
    .param p0, "dst"    # [Ljava/lang/Object;
    .param p1, "src"    # [Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 386
    array-length v0, p0

    if-lez v0, :cond_1

    .line 387
    if-lez p2, :cond_0

    .line 388
    invoke-static {p1, v1, p0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 390
    :cond_0
    array-length v0, p0

    if-ge p2, v0, :cond_1

    .line 391
    add-int/lit8 v0, p2, 0x1

    array-length v1, p1

    sub-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v0, p0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 394
    :cond_1
    return-void
.end method

.method private removeViewLocked(IZ)Landroid/view/View;
    .locals 8
    .param p1, "index"    # I
    .param p2, "immediate"    # Z

    .prologue
    .line 350
    iget-object v7, p0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v2, v7, p1

    .line 351
    .local v2, "root":Landroid/view/ViewRootImpl;
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v6

    .line 353
    .local v6, "view":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 354
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 355
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 356
    iget-object v7, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/view/inputmethod/InputMethodManager;->windowDismissed(Landroid/os/IBinder;)V

    .line 359
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    invoke-virtual {v2, p2}, Landroid/view/ViewRootImpl;->die(Z)V

    .line 361
    iget-object v7, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    array-length v0, v7

    .line 364
    .local v0, "count":I
    add-int/lit8 v7, v0, -0x1

    new-array v5, v7, [Landroid/view/View;

    .line 365
    .local v5, "tmpViews":[Landroid/view/View;
    iget-object v7, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    invoke-static {v5, v7, p1}, Landroid/view/WindowManagerGlobal;->removeItem([Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 366
    iput-object v5, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    .line 368
    add-int/lit8 v7, v0, -0x1

    new-array v4, v7, [Landroid/view/ViewRootImpl;

    .line 369
    .local v4, "tmpRoots":[Landroid/view/ViewRootImpl;
    iget-object v7, p0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    invoke-static {v4, v7, p1}, Landroid/view/WindowManagerGlobal;->removeItem([Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 370
    iput-object v4, p0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    .line 372
    add-int/lit8 v7, v0, -0x1

    new-array v3, v7, [Landroid/view/WindowManager$LayoutParams;

    .line 374
    .local v3, "tmpParams":[Landroid/view/WindowManager$LayoutParams;
    iget-object v7, p0, Landroid/view/WindowManagerGlobal;->mParams:[Landroid/view/WindowManager$LayoutParams;

    invoke-static {v3, v7, p1}, Landroid/view/WindowManagerGlobal;->removeItem([Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 375
    iput-object v3, p0, Landroid/view/WindowManagerGlobal;->mParams:[Landroid/view/WindowManager$LayoutParams;

    .line 377
    if-eqz v6, :cond_1

    .line 378
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 382
    :cond_1
    return-object v6
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "display"    # Landroid/view/Display;
    .param p4, "parentWindow"    # Landroid/view/Window;

    .prologue
    .line 188
    if-nez p1, :cond_0

    .line 189
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "view must not be null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 191
    :cond_0
    if-nez p3, :cond_1

    .line 192
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "display must not be null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 194
    :cond_1
    move-object/from16 v0, p2

    instance-of v9, v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v9, :cond_2

    .line 195
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Params must be WindowManager.LayoutParams"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_2
    move-object/from16 v8, p2

    .line 198
    check-cast v8, Landroid/view/WindowManager$LayoutParams;

    .line 199
    .local v8, "wparams":Landroid/view/WindowManager$LayoutParams;
    if-eqz p4, :cond_3

    .line 200
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/view/Window;->adjustLayoutParamsForSubWindow(Landroid/view/WindowManager$LayoutParams;)V

    .line 204
    :cond_3
    const/4 v6, 0x0

    .line 206
    .local v6, "panelParentView":Landroid/view/View;
    iget-object v10, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 208
    :try_start_0
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    if-nez v9, :cond_4

    .line 209
    new-instance v9, Landroid/view/WindowManagerGlobal$1;

    invoke-direct {v9, p0}, Landroid/view/WindowManagerGlobal$1;-><init>(Landroid/view/WindowManagerGlobal;)V

    iput-object v9, p0, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    .line 218
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    invoke-static {v9}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 221
    :cond_4
    const/4 v9, 0x0

    invoke-direct {p0, p1, v9}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v4

    .line 222
    .local v4, "index":I
    if-ltz v4, :cond_5

    .line 223
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "View "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has already been added to the window manager."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 265
    .end local v4    # "index":I
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 229
    .restart local v4    # "index":I
    :cond_5
    :try_start_1
    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x3e8

    if-lt v9, v11, :cond_8

    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x7cf

    if-gt v9, v11, :cond_8

    .line 231
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    if-eqz v9, :cond_7

    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    array-length v1, v9

    .line 232
    .local v1, "count":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_8

    .line 233
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v9, v9, v3

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v9}, Landroid/view/IWindow$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    iget-object v11, v8, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v9, v11, :cond_6

    .line 234
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    aget-object v6, v9, v3

    .line 232
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 231
    .end local v1    # "count":I
    .end local v3    # "i":I
    :cond_7
    const/4 v1, 0x0

    goto :goto_0

    .line 239
    :cond_8
    new-instance v7, Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-direct {v7, v9, v0}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 241
    .local v7, "root":Landroid/view/ViewRootImpl;
    invoke-virtual {p1, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    if-nez v9, :cond_9

    .line 244
    const/4 v4, 0x1

    .line 245
    const/4 v9, 0x1

    new-array v9, v9, [Landroid/view/View;

    iput-object v9, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    .line 246
    const/4 v9, 0x1

    new-array v9, v9, [Landroid/view/ViewRootImpl;

    iput-object v9, p0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    .line 247
    const/4 v9, 0x1

    new-array v9, v9, [Landroid/view/WindowManager$LayoutParams;

    iput-object v9, p0, Landroid/view/WindowManagerGlobal;->mParams:[Landroid/view/WindowManager$LayoutParams;

    .line 260
    :goto_2
    add-int/lit8 v4, v4, -0x1

    .line 262
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    aput-object p1, v9, v4

    .line 263
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    aput-object v7, v9, v4

    .line 264
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aput-object v8, v9, v4

    .line 265
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    :try_start_2
    invoke-virtual {v7, p1, v8, v6}, Landroid/view/ViewRootImpl;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 280
    return-void

    .line 249
    :cond_9
    :try_start_3
    iget-object v9, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    array-length v9, v9

    add-int/lit8 v4, v9, 0x1

    .line 250
    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    .line 251
    .local v5, "old":[Ljava/lang/Object;
    new-array v9, v4, [Landroid/view/View;

    iput-object v9, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    .line 252
    const/4 v9, 0x0

    iget-object v11, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    const/4 v12, 0x0

    add-int/lit8 v13, v4, -0x1

    invoke-static {v5, v9, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    .line 254
    new-array v9, v4, [Landroid/view/ViewRootImpl;

    iput-object v9, p0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    .line 255
    const/4 v9, 0x0

    iget-object v11, p0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    const/4 v12, 0x0

    add-int/lit8 v13, v4, -0x1

    invoke-static {v5, v9, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mParams:[Landroid/view/WindowManager$LayoutParams;

    .line 257
    new-array v9, v4, [Landroid/view/WindowManager$LayoutParams;

    iput-object v9, p0, Landroid/view/WindowManagerGlobal;->mParams:[Landroid/view/WindowManager$LayoutParams;

    .line 258
    const/4 v9, 0x0

    iget-object v11, p0, Landroid/view/WindowManagerGlobal;->mParams:[Landroid/view/WindowManager$LayoutParams;

    const/4 v12, 0x0

    add-int/lit8 v13, v4, -0x1

    invoke-static {v5, v9, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 270
    .end local v5    # "old":[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 272
    .local v2, "e":Ljava/lang/RuntimeException;
    iget-object v10, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 273
    const/4 v9, 0x0

    :try_start_4
    invoke-direct {p0, p1, v9}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v4

    .line 274
    if-ltz v4, :cond_a

    .line 275
    const/4 v9, 0x1

    invoke-direct {p0, v4, v9}, Landroid/view/WindowManagerGlobal;->removeViewLocked(IZ)Landroid/view/View;

    .line 277
    :cond_a
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 278
    throw v2

    .line 277
    :catchall_1
    move-exception v9

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v9
.end method

.method public closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "who"    # Ljava/lang/String;
    .param p3, "what"    # Ljava/lang/String;

    .prologue
    .line 320
    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 321
    :try_start_0
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    if-nez v4, :cond_0

    .line 322
    monitor-exit v5

    .line 347
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    array-length v0, v4

    .line 326
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 329
    if-eqz p1, :cond_1

    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aget-object v4, v4, v1

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v4, p1, :cond_3

    .line 330
    :cond_1
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v3, v4, v1

    .line 333
    .local v3, "root":Landroid/view/ViewRootImpl;
    if-eqz p2, :cond_2

    .line 334
    new-instance v2, Landroid/view/WindowLeaked;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " has leaked window "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " that was originally added here"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    .line 337
    .local v2, "leak":Landroid/view/WindowLeaked;
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getLocation()Landroid/view/WindowLeaked;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 338
    const-string v4, "WindowManager"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    .end local v2    # "leak":Landroid/view/WindowLeaked;
    :cond_2
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Landroid/view/WindowManagerGlobal;->removeViewLocked(IZ)Landroid/view/View;

    .line 342
    add-int/lit8 v1, v1, -0x1

    .line 343
    add-int/lit8 v0, v0, -0x1

    .line 326
    .end local v3    # "root":Landroid/view/ViewRootImpl;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 346
    :cond_4
    monitor-exit v5

    goto :goto_0

    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public dumpGfxInfo(Ljava/io/FileDescriptor;)V
    .locals 17
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 457
    new-instance v3, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 458
    .local v3, "fout":Ljava/io/FileOutputStream;
    new-instance v7, Ljava/io/PrintWriter;

    invoke-direct {v7, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 460
    .local v7, "pw":Ljava/io/PrintWriter;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 461
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    if-eqz v11, :cond_4

    .line 462
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    array-length v1, v11

    .line 464
    .local v1, "count":I
    const-string v11, "Profile data in ms:"

    invoke-virtual {v7, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 467
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v9, v11, v4

    .line 468
    .local v9, "root":Landroid/view/ViewRootImpl;
    invoke-static {v9}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v6

    .line 469
    .local v6, "name":Ljava/lang/String;
    const-string v11, "\n\t%s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    invoke-virtual {v7, v11, v13}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 471
    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v11

    iget-object v11, v11, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v11, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 473
    .local v8, "renderer":Landroid/view/HardwareRenderer;
    if-eqz v8, :cond_0

    .line 474
    invoke-virtual {v8, v7}, Landroid/view/HardwareRenderer;->dumpGfxInfo(Ljava/io/PrintWriter;)V

    .line 466
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 478
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "renderer":Landroid/view/HardwareRenderer;
    .end local v9    # "root":Landroid/view/ViewRootImpl;
    :cond_1
    const-string v11, "\nView hierarchy:\n"

    invoke-virtual {v7, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 480
    const/4 v10, 0x0

    .line 481
    .local v10, "viewsCount":I
    const/4 v2, 0x0

    .line 482
    .local v2, "displayListsSize":I
    const/4 v11, 0x2

    new-array v5, v11, [I

    .line 484
    .local v5, "info":[I
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_3

    .line 485
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v9, v11, v4

    .line 486
    .restart local v9    # "root":Landroid/view/ViewRootImpl;
    invoke-virtual {v9, v5}, Landroid/view/ViewRootImpl;->dumpGfxInfo([I)V

    .line 488
    invoke-static {v9}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v6

    .line 489
    .restart local v6    # "name":Ljava/lang/String;
    const-string v11, "  %s\n  %d views, %.2f kB of display lists"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    const/4 v14, 0x1

    const/4 v15, 0x0

    aget v15, v5, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const/4 v15, 0x1

    aget v15, v5, v15

    int-to-float v15, v15

    const/high16 v16, 0x44800000    # 1024.0f

    div-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v7, v11, v13}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 491
    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v11

    iget-object v11, v11, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v11, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 493
    .restart local v8    # "renderer":Landroid/view/HardwareRenderer;
    if-eqz v8, :cond_2

    .line 494
    const-string v11, ", %d frames rendered"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v8}, Landroid/view/HardwareRenderer;->getFrameCount()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v7, v11, v13}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 496
    :cond_2
    const-string v11, "\n\n"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v7, v11, v13}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 498
    const/4 v11, 0x0

    aget v11, v5, v11

    add-int/2addr v10, v11

    .line 499
    const/4 v11, 0x1

    aget v11, v5, v11

    add-int/2addr v2, v11

    .line 484
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 502
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "renderer":Landroid/view/HardwareRenderer;
    .end local v9    # "root":Landroid/view/ViewRootImpl;
    :cond_3
    const-string v11, "\nTotal ViewRootImpl: %d\n"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v7, v11, v13}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 503
    const-string v11, "Total Views:        %d\n"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v7, v11, v13}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 504
    const-string v11, "Total DisplayList:  %.2f kB\n\n"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    int-to-float v15, v2

    const/high16 v16, 0x44800000    # 1024.0f

    div-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v7, v11, v13}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 506
    .end local v1    # "count":I
    .end local v2    # "displayListsSize":I
    .end local v4    # "i":I
    .end local v5    # "info":[I
    .end local v10    # "viewsCount":I
    :cond_4
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    .line 510
    return-void

    .line 506
    :catchall_0
    move-exception v11

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 508
    :catchall_1
    move-exception v11

    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    throw v11
.end method

.method public endTrimMemory()V
    .locals 1

    .prologue
    .line 438
    invoke-static {}, Landroid/view/HardwareRenderer;->endTrimMemory()V

    .line 440
    iget-boolean v0, p0, Landroid/view/WindowManagerGlobal;->mNeedsEglTerminate:Z

    if-eqz v0, :cond_0

    .line 441
    invoke-static {}, Landroid/opengl/ManagedEGLContext;->doTerminate()Z

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowManagerGlobal;->mNeedsEglTerminate:Z

    .line 444
    :cond_0
    return-void
.end method

.method public getRootView(Ljava/lang/String;)Landroid/view/View;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 176
    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 177
    :try_start_0
    iget-object v6, p0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    if-nez v6, :cond_0

    monitor-exit v5

    .line 183
    :goto_0
    return-object v4

    .line 178
    :cond_0
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    .local v0, "arr$":[Landroid/view/ViewRootImpl;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 179
    .local v3, "root":Landroid/view/ViewRootImpl;
    invoke-static {v3}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v4

    monitor-exit v5

    goto :goto_0

    .line 181
    .end local v0    # "arr$":[Landroid/view/ViewRootImpl;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "root":Landroid/view/ViewRootImpl;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 178
    .restart local v0    # "arr$":[Landroid/view/ViewRootImpl;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "root":Landroid/view/ViewRootImpl;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 181
    .end local v3    # "root":Landroid/view/ViewRootImpl;
    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getViewRootNames()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 164
    iget-object v8, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 165
    :try_start_0
    iget-object v7, p0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    if-nez v7, :cond_0

    const/4 v7, 0x0

    new-array v5, v7, [Ljava/lang/String;

    monitor-exit v8

    .line 171
    :goto_0
    return-object v5

    .line 166
    :cond_0
    iget-object v7, p0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    array-length v7, v7

    new-array v5, v7, [Ljava/lang/String;

    .line 167
    .local v5, "mViewRoots":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 168
    .local v1, "i":I
    iget-object v0, p0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    .local v0, "arr$":[Landroid/view/ViewRootImpl;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v6, v0, v3

    .line 169
    .local v6, "root":Landroid/view/ViewRootImpl;
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-static {v6}, Landroid/view/WindowManagerGlobal;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    .line 168
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 171
    .end local v6    # "root":Landroid/view/ViewRootImpl;
    :cond_1
    monitor-exit v8

    goto :goto_0

    .line 172
    .end local v0    # "arr$":[Landroid/view/ViewRootImpl;
    .end local v2    # "i":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "mViewRoots":[Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public removeView(Landroid/view/View;Z)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "immediate"    # Z

    .prologue
    .line 303
    if-nez p1, :cond_0

    .line 304
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "view must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 307
    :cond_0
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 308
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v2}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v1

    .line 309
    .local v1, "index":I
    invoke-direct {p0, v1, p2}, Landroid/view/WindowManagerGlobal;->removeViewLocked(IZ)Landroid/view/View;

    move-result-object v0

    .line 310
    .local v0, "curView":Landroid/view/View;
    if-ne v0, p1, :cond_1

    .line 311
    monitor-exit v3

    return-void

    .line 314
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling with view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but the ViewAncestor is attached to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 316
    .end local v0    # "curView":Landroid/view/View;
    .end local v1    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public reportNewConfiguration(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 532
    iget-object v5, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 533
    :try_start_0
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    if-eqz v4, :cond_1

    .line 534
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    array-length v1, v4

    .line 535
    .local v1, "count":I
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    .end local p1    # "config":Landroid/content/res/Configuration;
    .local v0, "config":Landroid/content/res/Configuration;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 537
    :try_start_1
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v3, v4, v2

    .line 538
    .local v3, "root":Landroid/view/ViewRootImpl;
    invoke-virtual {v3, v0}, Landroid/view/ViewRootImpl;->requestUpdateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 536
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "root":Landroid/view/ViewRootImpl;
    :cond_0
    move-object p1, v0

    .line 541
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .restart local p1    # "config":Landroid/content/res/Configuration;
    :cond_1
    :try_start_2
    monitor-exit v5

    .line 542
    return-void

    .line 541
    :catchall_0
    move-exception v4

    :goto_1
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .end local p1    # "config":Landroid/content/res/Configuration;
    .restart local v0    # "config":Landroid/content/res/Configuration;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    :catchall_1
    move-exception v4

    move-object p1, v0

    .end local v0    # "config":Landroid/content/res/Configuration;
    .restart local p1    # "config":Landroid/content/res/Configuration;
    goto :goto_1
.end method

.method public setStoppedState(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "stopped"    # Z

    .prologue
    .line 518
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 519
    :try_start_0
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    if-eqz v3, :cond_2

    .line 520
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    array-length v0, v3

    .line 521
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 522
    if-eqz p1, :cond_0

    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aget-object v3, v3, v1

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v3, p1, :cond_1

    .line 523
    :cond_0
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v2, v3, v1

    .line 524
    .local v2, "root":Landroid/view/ViewRootImpl;
    invoke-virtual {v2, p2}, Landroid/view/ViewRootImpl;->setStopped(Z)V

    .line 521
    .end local v2    # "root":Landroid/view/ViewRootImpl;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 528
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2
    monitor-exit v4

    .line 529
    return-void

    .line 528
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public startTrimMemory(I)V
    .locals 5
    .param p1, "level"    # I

    .prologue
    const/16 v4, 0x50

    .line 412
    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 415
    if-ge p1, v4, :cond_0

    const/16 v2, 0x3c

    if-lt p1, v2, :cond_4

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    if-nez v2, :cond_4

    .line 420
    :cond_0
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 421
    :try_start_0
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    if-nez v2, :cond_2

    monitor-exit v3

    .line 435
    :cond_1
    :goto_0
    return-void

    .line 422
    :cond_2
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    array-length v0, v2

    .line 423
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 424
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->terminateHardwareResources()V

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 426
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/WindowManagerGlobal;->mNeedsEglTerminate:Z

    .line 429
    invoke-static {v4}, Landroid/view/HardwareRenderer;->startTrimMemory(I)V

    goto :goto_0

    .line 426
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 433
    :cond_4
    invoke-static {p1}, Landroid/view/HardwareRenderer;->startTrimMemory(I)V

    goto :goto_0
.end method

.method public trimLocalMemory()V
    .locals 4

    .prologue
    .line 447
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 448
    :try_start_0
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    if-nez v2, :cond_0

    monitor-exit v3

    .line 454
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mViews:[Landroid/view/View;

    array-length v0, v2

    .line 450
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 451
    iget-object v2, p0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->destroyHardwareLayers()V

    .line 450
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 453
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 283
    if-nez p1, :cond_0

    .line 284
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "view must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 286
    :cond_0
    instance-of v3, p2, Landroid/view/WindowManager$LayoutParams;

    if-nez v3, :cond_1

    .line 287
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Params must be WindowManager.LayoutParams"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move-object v2, p2

    .line 290
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 292
    .local v2, "wparams":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    iget-object v4, p0, Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 295
    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, p1, v3}, Landroid/view/WindowManagerGlobal;->findViewLocked(Landroid/view/View;Z)I

    move-result v0

    .line 296
    .local v0, "index":I
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v1, v3, v0

    .line 297
    .local v1, "root":Landroid/view/ViewRootImpl;
    iget-object v3, p0, Landroid/view/WindowManagerGlobal;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aput-object v2, v3, v0

    .line 298
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewRootImpl;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 299
    monitor-exit v4

    .line 300
    return-void

    .line 299
    .end local v0    # "index":I
    .end local v1    # "root":Landroid/view/ViewRootImpl;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
