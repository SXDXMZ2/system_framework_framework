.class public Landroid/webkit/WebSettingsClassic;
.super Landroid/webkit/WebSettings;
.source "WebSettingsClassic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebSettingsClassic$1;,
        Landroid/webkit/WebSettingsClassic$EventHandler;,
        Landroid/webkit/WebSettingsClassic$AutoFillProfile;
    }
.end annotation


# static fields
.field private static final ACCEPT_LANG_FOR_US_LOCALE:Ljava/lang/String; = "en-US"

.field private static final DESKTOP_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

.field private static final DOUBLE_TAP_TOAST_COUNT:Ljava/lang/String; = "double_tap_toast_count"

.field private static final IPHONE_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

.field private static final PREF_FILE:Ljava/lang/String; = "WebViewSettings"

.field private static final PREVIOUS_VERSION:Ljava/lang/String; = "4.1.1"

.field private static mDoubleTapToastCount:I

.field private static sLocale:Ljava/util/Locale;

.field private static sLockForLocaleSettings:Ljava/lang/Object;


# instance fields
.field private mAcceptLanguage:Ljava/lang/String;

.field private mAllowContentAccess:Z

.field private mAllowFileAccess:Z

.field private mAllowFileAccessFromFileURLs:Z

.field private mAllowUniversalAccessFromFileURLs:Z

.field private mAppCacheEnabled:Z

.field private mAppCacheMaxSize:J

.field private mAppCachePath:Ljava/lang/String;

.field private mAutoFillEnabled:Z

.field private mAutoFillProfile:Landroid/webkit/WebSettingsClassic$AutoFillProfile;

.field private mBlockNetworkImage:Z

.field private mBlockNetworkLoads:Z

.field private mBrowserFrame:Landroid/webkit/BrowserFrame;

.field private mBuiltInZoomControls:Z

.field private mContext:Landroid/content/Context;

.field private mCursiveFontFamily:Ljava/lang/String;

.field private mDatabaseEnabled:Z

.field private mDatabasePath:Ljava/lang/String;

.field private mDatabasePathHasBeenSet:Z

.field private mDefaultFixedFontSize:I

.field private mDefaultFontSize:I

.field private mDefaultTextEncoding:Ljava/lang/String;

.field private mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

.field private mDisplayZoomControls:Z

.field private mDomStorageEnabled:Z

.field private mDoubleTapZoom:I

.field private mEnableSmoothTransition:Z

.field private final mEventHandler:Landroid/webkit/WebSettingsClassic$EventHandler;

.field private mFantasyFontFamily:Ljava/lang/String;

.field private mFixedFontFamily:Ljava/lang/String;

.field private mForceUserScalable:Z

.field private mGeolocationDatabasePath:Ljava/lang/String;

.field private mGeolocationEnabled:Z

.field private mHardwareAccelSkia:Z

.field private mJavaScriptCanOpenWindowsAutomatically:Z

.field private mJavaScriptEnabled:Z

.field private mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

.field private mLightTouchEnabled:Z

.field private mLinkPrefetchEnabled:Z

.field private mLoadWithOverviewMode:Z

.field private mLoadsImagesAutomatically:Z

.field private mMaximumDecodedImageSize:J

.field private mMediaPlaybackRequiresUserGesture:Z

.field private mMinimumFontSize:I

.field private mMinimumLogicalFontSize:I

.field private mNavDump:Z

.field private mNeedInitialFocus:Z

.field private mOverrideCacheMode:I

.field private mPageCacheCapacity:I

.field private mPasswordEchoEnabled:Z

.field private mPluginState:Landroid/webkit/WebSettings$PluginState;

.field private mPrivateBrowsingEnabled:Z

.field private mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

.field private mSansSerifFontFamily:Ljava/lang/String;

.field private mSaveFormData:Z

.field private mSavePassword:Z

.field private mSerifFontFamily:Ljava/lang/String;

.field private mShowVisualIndicator:Z

.field private mShrinksStandaloneImagesToFit:Z

.field private mStandardFontFamily:Ljava/lang/String;

.field private mSupportMultipleWindows:Z

.field private mSupportZoom:Z

.field private mSyncPending:Z

.field private mSyntheticLinksEnabled:Z

.field private mTextSize:I

.field private mUseDefaultUserAgent:Z

.field private mUseDoubleTree:Z

.field private mUseWebViewBackgroundForOverscroll:Z

.field private mUseWideViewport:Z

.field private mUserAgent:Ljava/lang/String;

.field private mUserAgentProfile:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebViewClassic;

.field private mWorkersEnabled:Z

.field private mXSSAuditorEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x3

    sput v0, Landroid/webkit/WebSettingsClassic;->mDoubleTapToastCount:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebViewClassic;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webview"    # Landroid/webkit/WebViewClassic;

    .prologue
    const/16 v6, 0x64

    const/16 v7, 0x10

    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 280
    invoke-direct {p0}, Landroid/webkit/WebSettings;-><init>()V

    .line 47
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mSyncPending:Z

    .line 57
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 59
    iput v6, p0, Landroid/webkit/WebSettingsClassic;->mTextSize:I

    .line 60
    const-string/jumbo v1, "sans-serif"

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mStandardFontFamily:Ljava/lang/String;

    .line 61
    const-string/jumbo v1, "monospace"

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mFixedFontFamily:Ljava/lang/String;

    .line 62
    const-string/jumbo v1, "sans-serif"

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mSansSerifFontFamily:Ljava/lang/String;

    .line 63
    const-string/jumbo v1, "serif"

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mSerifFontFamily:Ljava/lang/String;

    .line 64
    const-string v1, "cursive"

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mCursiveFontFamily:Ljava/lang/String;

    .line 65
    const-string v1, "fantasy"

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mFantasyFontFamily:Ljava/lang/String;

    .line 71
    iput v4, p0, Landroid/webkit/WebSettingsClassic;->mMinimumFontSize:I

    .line 72
    iput v4, p0, Landroid/webkit/WebSettingsClassic;->mMinimumLogicalFontSize:I

    .line 73
    iput v7, p0, Landroid/webkit/WebSettingsClassic;->mDefaultFontSize:I

    .line 74
    const/16 v1, 0xd

    iput v1, p0, Landroid/webkit/WebSettingsClassic;->mDefaultFixedFontSize:I

    .line 75
    iput v3, p0, Landroid/webkit/WebSettingsClassic;->mPageCacheCapacity:I

    .line 76
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mLoadsImagesAutomatically:Z

    .line 77
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mBlockNetworkImage:Z

    .line 79
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mJavaScriptEnabled:Z

    .line 80
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mAllowUniversalAccessFromFileURLs:Z

    .line 81
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mAllowFileAccessFromFileURLs:Z

    .line 82
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mHardwareAccelSkia:Z

    .line 83
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mShowVisualIndicator:Z

    .line 84
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    .line 85
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 86
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mUseDoubleTree:Z

    .line 87
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mUseWideViewport:Z

    .line 88
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mSupportMultipleWindows:Z

    .line 89
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mShrinksStandaloneImagesToFit:Z

    .line 90
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/webkit/WebSettingsClassic;->mMaximumDecodedImageSize:J

    .line 91
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    .line 92
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mSyntheticLinksEnabled:Z

    .line 94
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mAppCacheEnabled:Z

    .line 95
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mDatabaseEnabled:Z

    .line 96
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mDomStorageEnabled:Z

    .line 97
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mWorkersEnabled:Z

    .line 98
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mGeolocationEnabled:Z

    .line 99
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mXSSAuditorEnabled:Z

    .line 100
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mLinkPrefetchEnabled:Z

    .line 102
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Landroid/webkit/WebSettingsClassic;->mAppCacheMaxSize:J

    .line 103
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mAppCachePath:Ljava/lang/String;

    .line 104
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mDatabasePath:Ljava/lang/String;

    .line 107
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mDatabasePathHasBeenSet:Z

    .line 108
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mGeolocationDatabasePath:Ljava/lang/String;

    .line 112
    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    .line 113
    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    .line 114
    const/4 v1, -0x1

    iput v1, p0, Landroid/webkit/WebSettingsClassic;->mOverrideCacheMode:I

    .line 115
    iput v6, p0, Landroid/webkit/WebSettingsClassic;->mDoubleTapZoom:I

    .line 116
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mSaveFormData:Z

    .line 117
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mAutoFillEnabled:Z

    .line 118
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mSavePassword:Z

    .line 119
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mLightTouchEnabled:Z

    .line 120
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mNeedInitialFocus:Z

    .line 121
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mNavDump:Z

    .line 122
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mSupportZoom:Z

    .line 123
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mMediaPlaybackRequiresUserGesture:Z

    .line 124
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mBuiltInZoomControls:Z

    .line 125
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mDisplayZoomControls:Z

    .line 126
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mAllowFileAccess:Z

    .line 127
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mAllowContentAccess:Z

    .line 128
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mLoadWithOverviewMode:Z

    .line 129
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mEnableSmoothTransition:Z

    .line 130
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mForceUserScalable:Z

    .line 131
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mPasswordEchoEnabled:Z

    .line 180
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mUseWebViewBackgroundForOverscroll:Z

    .line 281
    new-instance v1, Landroid/webkit/WebSettingsClassic$EventHandler;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Landroid/webkit/WebSettingsClassic$EventHandler;-><init>(Landroid/webkit/WebSettingsClassic;Landroid/webkit/WebSettingsClassic$1;)V

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mEventHandler:Landroid/webkit/WebSettingsClassic$EventHandler;

    .line 282
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    .line 283
    iput-object p2, p0, Landroid/webkit/WebSettingsClassic;->mWebView:Landroid/webkit/WebViewClassic;

    .line 284
    const v1, 0x1040073

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mDefaultTextEncoding:Ljava/lang/String;

    .line 287
    sget-object v1, Landroid/webkit/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 288
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/webkit/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    .line 289
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    .line 291
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mAcceptLanguage:Ljava/lang/String;

    .line 292
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    .line 293
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mUseDefaultUserAgent:Z

    .line 294
    const v1, 0x104002b

    new-array v4, v2, [Ljava/lang/Object;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mUserAgentProfile:Ljava/lang/String;

    .line 297
    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/webkit/WebSettingsClassic;->mBlockNetworkLoads:Z

    .line 302
    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v1, v7, :cond_1

    .line 304
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mAllowUniversalAccessFromFileURLs:Z

    .line 305
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mAllowFileAccessFromFileURLs:Z

    .line 308
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "show_password"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    move v3, v2

    :cond_2
    iput-boolean v3, p0, Landroid/webkit/WebSettingsClassic;->mPasswordEchoEnabled:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_1
    return-void

    :cond_3
    move v1, v3

    .line 297
    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    iput-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mPasswordEchoEnabled:Z

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/webkit/WebSettingsClassic;)Landroid/webkit/BrowserFrame;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebSettingsClassic;

    .prologue
    .line 38
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/WebSettingsClassic;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/WebSettingsClassic;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/webkit/WebSettingsClassic;->nativeSync(I)V

    return-void
.end method

.method static synthetic access$202(Landroid/webkit/WebSettingsClassic;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/webkit/WebSettingsClassic;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mSyncPending:Z

    return p1
.end method

.method static synthetic access$400(Landroid/webkit/WebSettingsClassic;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebSettingsClassic;

    .prologue
    .line 38
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 38
    sget v0, Landroid/webkit/WebSettingsClassic;->mDoubleTapToastCount:I

    return v0
.end method

.method static synthetic access$600(Landroid/webkit/WebSettingsClassic;)Landroid/webkit/WebSettings$RenderPriority;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebSettingsClassic;

    .prologue
    .line 38
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    return-object v0
.end method

.method private static addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .locals 3
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 363
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/WebSettingsClassic;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "language":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 365
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "country":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 368
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .end local v0    # "country":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "langCode"    # Ljava/lang/String;

    .prologue
    .line 345
    if-nez p0, :cond_1

    .line 346
    const/4 p0, 0x0

    .line 358
    .end local p0    # "langCode":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 348
    .restart local p0    # "langCode":Ljava/lang/String;
    :cond_1
    const-string v0, "iw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 350
    const-string p0, "he"

    goto :goto_0

    .line 351
    :cond_2
    const-string v0, "in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 353
    const-string p0, "id"

    goto :goto_0

    .line 354
    :cond_3
    const-string v0, "ji"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    const-string/jumbo p0, "yi"

    goto :goto_0
.end method

.method private getCurrentAcceptLanguage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 324
    sget-object v3, Landroid/webkit/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v3

    .line 325
    :try_start_0
    sget-object v1, Landroid/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    .line 326
    .local v1, "locale":Ljava/util/Locale;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-static {v0, v1}, Landroid/webkit/WebSettingsClassic;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 330
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 331
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 332
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    :cond_0
    const-string v2, "en-US"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 326
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local v1    # "locale":Ljava/util/Locale;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private declared-synchronized getCurrentUserAgent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 380
    monitor-enter p0

    :try_start_0
    sget-object v2, Landroid/webkit/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 381
    :try_start_1
    sget-object v0, Landroid/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    .line 382
    .local v0, "locale":Ljava/util/Locale;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    :try_start_2
    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/webkit/WebSettingsClassic;->getDefaultUserAgentForLocale(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 382
    .end local v0    # "locale":Ljava/util/Locale;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 380
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static getDefaultUserAgentForLocale(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v10, 0x0

    .line 398
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 400
    .local v1, "buffer":Ljava/lang/StringBuffer;
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 401
    .local v7, "version":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 402
    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 404
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    :goto_0
    const-string v8, "; "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 416
    .local v4, "language":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 417
    invoke-static {v4}, Landroid/webkit/WebSettingsClassic;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "country":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 420
    const-string v8, "-"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 427
    .end local v2    # "country":Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v8, ";"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    const-string v8, "REL"

    sget-object v9, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 430
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 431
    .local v6, "model":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 432
    const-string v8, " "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    .end local v6    # "model":Ljava/lang/String;
    :cond_1
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 437
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 438
    const-string v8, " Build/"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x104037f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 443
    .local v5, "mobile":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x104037e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "base":Ljava/lang/String;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v10

    const/4 v9, 0x1

    aput-object v5, v8, v9

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 408
    .end local v0    # "base":Ljava/lang/String;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "language":Ljava/lang/String;
    .end local v5    # "mobile":Ljava/lang/String;
    :cond_3
    const-string v8, "4.1.1"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 412
    :cond_4
    const-string v8, "1.0"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 425
    .restart local v4    # "language":Ljava/lang/String;
    :cond_5
    const-string v8, "en"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private native nativeSync(I)V
.end method

.method private pin(I)I
    .locals 2
    .param p1, "size"    # I

    .prologue
    const/16 v1, 0x48

    const/4 v0, 0x1

    .line 1731
    if-ge p1, v0, :cond_1

    move p1, v0

    .line 1736
    .end local p1    # "size":I
    :cond_0
    :goto_0
    return p1

    .line 1733
    .restart local p1    # "size":I
    :cond_1
    if-le p1, v1, :cond_0

    move p1, v1

    .line 1734
    goto :goto_0
.end method

.method private declared-synchronized postSync()V
    .locals 3

    .prologue
    .line 1742
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mSyncPending:Z

    if-nez v0, :cond_0

    .line 1743
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mEventHandler:Landroid/webkit/WebSettingsClassic$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkit/WebSettingsClassic$EventHandler;->sendMessage(Landroid/os/Message;)Z
    invoke-static {v0, v1}, Landroid/webkit/WebSettingsClassic$EventHandler;->access$800(Landroid/webkit/WebSettingsClassic$EventHandler;Landroid/os/Message;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mSyncPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1746
    :cond_0
    monitor-exit p0

    return-void

    .line 1742
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private verifyNetworkAccess()V
    .locals 4

    .prologue
    .line 1112
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mBlockNetworkLoads:Z

    if-nez v0, :cond_0

    .line 1113
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1116
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denied - application missing INTERNET permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1121
    :cond_0
    return-void
.end method


# virtual methods
.method public enableSmoothTransition()Z
    .locals 1

    .prologue
    .line 597
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mEnableSmoothTransition:Z

    return v0
.end method

.method public forceUserScalable()Z
    .locals 1

    .prologue
    .line 1635
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mForceUserScalable:Z

    return v0
.end method

.method declared-synchronized getAcceptLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1515
    monitor-enter p0

    :try_start_0
    sget-object v2, Landroid/webkit/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1516
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1517
    .local v0, "currentLocale":Ljava/util/Locale;
    sget-object v1, Landroid/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1518
    sput-object v0, Landroid/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    .line 1519
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mAcceptLanguage:Ljava/lang/String;

    .line 1521
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1522
    :try_start_2
    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mAcceptLanguage:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v1

    .line 1521
    .end local v0    # "currentLocale":Ljava/util/Locale;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1515
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAllowContentAccess()Z
    .locals 1

    .prologue
    .line 565
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mAllowContentAccess:Z

    return v0
.end method

.method public getAllowFileAccess()Z
    .locals 1

    .prologue
    .line 549
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mAllowFileAccess:Z

    return v0
.end method

.method public declared-synchronized getAllowFileAccessFromFileURLs()Z
    .locals 1

    .prologue
    .line 1393
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mAllowFileAccessFromFileURLs:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllowUniversalAccessFromFileURLs()Z
    .locals 1

    .prologue
    .line 1385
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mAllowUniversalAccessFromFileURLs:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAutoFillEnabled()Z
    .locals 1

    .prologue
    .line 1663
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mAutoFillEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAutoFillProfile()Landroid/webkit/WebSettingsClassic$AutoFillProfile;
    .locals 1

    .prologue
    .line 1674
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mAutoFillProfile:Landroid/webkit/WebSettingsClassic$AutoFillProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBlockNetworkImage()Z
    .locals 1

    .prologue
    .line 1087
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mBlockNetworkImage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBlockNetworkLoads()Z
    .locals 1

    .prologue
    .line 1107
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mBlockNetworkLoads:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBuiltInZoomControls()Z
    .locals 1

    .prologue
    .line 516
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mBuiltInZoomControls:Z

    return v0
.end method

.method public getCacheMode()I
    .locals 1

    .prologue
    .line 1572
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mOverrideCacheMode:I

    return v0
.end method

.method public declared-synchronized getCursiveFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 937
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mCursiveFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabaseEnabled()Z
    .locals 1

    .prologue
    .line 1323
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mDatabaseEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabasePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1315
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mDatabasePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFixedFontSize()I
    .locals 1

    .prologue
    .line 1036
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mDefaultFixedFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFontSize()I
    .locals 1

    .prologue
    .line 1016
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mDefaultFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultTextEncodingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1458
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mDefaultTextEncoding:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    return-object v0
.end method

.method public getDisplayZoomControls()Z
    .locals 1

    .prologue
    .line 533
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mDisplayZoomControls:Z

    return v0
.end method

.method public declared-synchronized getDomStorageEnabled()Z
    .locals 1

    .prologue
    .line 1307
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mDomStorageEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getDoubleTapToastCount()I
    .locals 1

    .prologue
    .line 1678
    sget v0, Landroid/webkit/WebSettingsClassic;->mDoubleTapToastCount:I

    return v0
.end method

.method public getDoubleTapZoom()I
    .locals 1

    .prologue
    .line 685
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mDoubleTapZoom:I

    return v0
.end method

.method public declared-synchronized getFantasyFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 956
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mFantasyFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFixedFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 880
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mFixedFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHardwareAccelSkiaEnabled()Z
    .locals 1

    .prologue
    .line 1172
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mHardwareAccelSkia:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptCanOpenWindowsAutomatically()Z
    .locals 1

    .prologue
    .line 1439
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mJavaScriptCanOpenWindowsAutomatically:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptEnabled()Z
    .locals 1

    .prologue
    .line 1377
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mJavaScriptEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;
    .locals 1

    .prologue
    .line 842
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLightTouchEnabled()Z
    .locals 1

    .prologue
    .line 720
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mLightTouchEnabled:Z

    return v0
.end method

.method public getLoadWithOverviewMode()Z
    .locals 1

    .prologue
    .line 581
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mLoadWithOverviewMode:Z

    return v0
.end method

.method public declared-synchronized getLoadsImagesAutomatically()Z
    .locals 1

    .prologue
    .line 1068
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mLoadsImagesAutomatically:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMediaPlaybackRequiresUserGesture()Z
    .locals 1

    .prologue
    .line 499
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mMediaPlaybackRequiresUserGesture:Z

    return v0
.end method

.method public declared-synchronized getMinimumFontSize()I
    .locals 1

    .prologue
    .line 976
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mMinimumFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumLogicalFontSize()I
    .locals 1

    .prologue
    .line 996
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mMinimumLogicalFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNavDump()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 463
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mNavDump:Z

    return v0
.end method

.method getNeedInitialFocus()Z
    .locals 1

    .prologue
    .line 1541
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mNeedInitialFocus:Z

    return v0
.end method

.method public declared-synchronized getPluginState()Landroid/webkit/WebSettings$PluginState;
    .locals 1

    .prologue
    .line 1410
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mPluginState:Landroid/webkit/WebSettings$PluginState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1402
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1419
    monitor-enter p0

    :try_start_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1697
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic;->nativeGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getSansSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 899
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mSansSerifFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSaveFormData()Z
    .locals 1

    .prologue
    .line 631
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mSaveFormData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSavePassword()Z
    .locals 1

    .prologue
    .line 647
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mSavePassword:Z

    return v0
.end method

.method public declared-synchronized getSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 918
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mSerifFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getShowVisualIndicator()Z
    .locals 1

    .prologue
    .line 1190
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mShowVisualIndicator:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStandardFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 861
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mStandardFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTextZoom()I
    .locals 1

    .prologue
    .line 666
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mTextSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUseDoubleTree()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 738
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method getUseFixedViewport()Z
    .locals 1

    .prologue
    .line 1605
    invoke-virtual {p0}, Landroid/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v0

    return v0
.end method

.method public getUseWebViewBackgroundForOverscrollBackground()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 615
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mUseWebViewBackgroundForOverscroll:Z

    return v0
.end method

.method public declared-synchronized getUseWideViewPort()Z
    .locals 1

    .prologue
    .line 798
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mUseWideViewport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgent()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 772
    monitor-enter p0

    :try_start_0
    const-string v0, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    const/4 v0, 0x1

    .line 779
    :goto_0
    monitor-exit p0

    return v0

    .line 774
    :cond_0
    :try_start_1
    const-string v0, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 775
    const/4 v0, 0x2

    goto :goto_0

    .line 776
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mUseDefaultUserAgent:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 777
    const/4 v0, 0x0

    goto :goto_0

    .line 779
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 772
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgentString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1491
    monitor-enter p0

    :try_start_0
    const-string v2, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    iget-object v3, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v3, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/webkit/WebSettingsClassic;->mUseDefaultUserAgent:Z

    if-nez v2, :cond_1

    .line 1494
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1510
    :goto_0
    monitor-exit p0

    return-object v2

    .line 1497
    :cond_1
    const/4 v1, 0x0

    .line 1498
    .local v1, "doPostSync":Z
    :try_start_1
    sget-object v3, Landroid/webkit/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1499
    :try_start_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1500
    .local v0, "currentLocale":Ljava/util/Locale;
    sget-object v2, Landroid/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1501
    sput-object v0, Landroid/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    .line 1502
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    .line 1503
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebSettingsClassic;->mAcceptLanguage:Ljava/lang/String;

    .line 1504
    const/4 v1, 0x1

    .line 1506
    :cond_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1507
    if-eqz v1, :cond_3

    .line 1508
    :try_start_3
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V

    .line 1510
    :cond_3
    iget-object v2, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 1506
    .end local v0    # "currentLocale":Ljava/util/Locale;
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1491
    .end local v1    # "doPostSync":Z
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method isNarrowColumnLayout()Z
    .locals 2

    .prologue
    .line 1526
    invoke-virtual {p0}, Landroid/webkit/WebSettingsClassic;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPrivateBrowsingEnabled()Z
    .locals 1

    .prologue
    .line 1612
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    return v0
.end method

.method declared-synchronized onDestroyed()V
    .locals 0

    .prologue
    .line 1727
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public setAllowContentAccess(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 557
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mAllowContentAccess:Z

    .line 558
    return-void
.end method

.method public setAllowFileAccess(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 541
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mAllowFileAccess:Z

    .line 542
    return-void
.end method

.method public declared-synchronized setAllowFileAccessFromFileURLs(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1151
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mAllowFileAccessFromFileURLs:Z

    if-eq v0, p1, :cond_0

    .line 1152
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mAllowFileAccessFromFileURLs:Z

    .line 1153
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1155
    :cond_0
    monitor-exit p0

    return-void

    .line 1151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAllowUniversalAccessFromFileURLs(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1140
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mAllowUniversalAccessFromFileURLs:Z

    if-eq v0, p1, :cond_0

    .line 1141
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mAllowUniversalAccessFromFileURLs:Z

    .line 1142
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    :cond_0
    monitor-exit p0

    return-void

    .line 1140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCacheEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1250
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mAppCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1251
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mAppCacheEnabled:Z

    .line 1252
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1254
    :cond_0
    monitor-exit p0

    return-void

    .line 1250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCacheMaxSize(J)V
    .locals 2
    .param p1, "appCacheMaxSize"    # J

    .prologue
    .line 1274
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroid/webkit/WebSettingsClassic;->mAppCacheMaxSize:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 1275
    iput-wide p1, p0, Landroid/webkit/WebSettingsClassic;->mAppCacheMaxSize:J

    .line 1276
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1278
    :cond_0
    monitor-exit p0

    return-void

    .line 1274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCachePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1263
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mAppCachePath:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1264
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mAppCachePath:Ljava/lang/String;

    .line 1265
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1267
    :cond_0
    monitor-exit p0

    return-void

    .line 1263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAutoFillEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1655
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v1, p0, Landroid/webkit/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 1656
    .local v0, "autoFillEnabled":Z
    :goto_0
    iget-boolean v1, p0, Landroid/webkit/WebSettingsClassic;->mAutoFillEnabled:Z

    if-eq v1, v0, :cond_0

    .line 1657
    iput-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mAutoFillEnabled:Z

    .line 1658
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1660
    :cond_0
    monitor-exit p0

    return-void

    .line 1655
    .end local v0    # "autoFillEnabled":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setAutoFillProfile(Landroid/webkit/WebSettingsClassic$AutoFillProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/webkit/WebSettingsClassic$AutoFillProfile;

    .prologue
    .line 1667
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mAutoFillProfile:Landroid/webkit/WebSettingsClassic$AutoFillProfile;

    if-eq v0, p1, :cond_0

    .line 1668
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mAutoFillProfile:Landroid/webkit/WebSettingsClassic$AutoFillProfile;

    .line 1669
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1671
    :cond_0
    monitor-exit p0

    return-void

    .line 1667
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkImage(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1076
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mBlockNetworkImage:Z

    if-eq v0, p1, :cond_0

    .line 1077
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mBlockNetworkImage:Z

    .line 1078
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1080
    :cond_0
    monitor-exit p0

    return-void

    .line 1076
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkLoads(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1095
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mBlockNetworkLoads:Z

    if-eq v0, p1, :cond_0

    .line 1096
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mBlockNetworkLoads:Z

    .line 1097
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->verifyNetworkAccess()V

    .line 1098
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1100
    :cond_0
    monitor-exit p0

    return-void

    .line 1095
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 507
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mBuiltInZoomControls:Z

    .line 508
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 509
    return-void
.end method

.method public setCacheMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 1561
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mOverrideCacheMode:I

    if-eq p1, v0, :cond_0

    .line 1562
    iput p1, p0, Landroid/webkit/WebSettingsClassic;->mOverrideCacheMode:I

    .line 1563
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V

    .line 1565
    :cond_0
    return-void
.end method

.method public declared-synchronized setCursiveFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 926
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mCursiveFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 927
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mCursiveFontFamily:Ljava/lang/String;

    .line 928
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 930
    :cond_0
    monitor-exit p0

    return-void

    .line 926
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabaseEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1285
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mDatabaseEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1286
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mDatabaseEnabled:Z

    .line 1287
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1289
    :cond_0
    monitor-exit p0

    return-void

    .line 1285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabasePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "databasePath"    # Ljava/lang/String;

    .prologue
    .line 1226
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mDatabasePathHasBeenSet:Z

    if-nez v0, :cond_0

    .line 1227
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mDatabasePath:Ljava/lang/String;

    .line 1228
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mDatabasePathHasBeenSet:Z

    .line 1229
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1231
    :cond_0
    monitor-exit p0

    return-void

    .line 1226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFixedFontSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1024
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebSettingsClassic;->pin(I)I

    move-result p1

    .line 1025
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mDefaultFixedFontSize:I

    if-eq v0, p1, :cond_0

    .line 1026
    iput p1, p0, Landroid/webkit/WebSettingsClassic;->mDefaultFixedFontSize:I

    .line 1027
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1029
    :cond_0
    monitor-exit p0

    return-void

    .line 1024
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFontSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1004
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebSettingsClassic;->pin(I)I

    move-result p1

    .line 1005
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mDefaultFontSize:I

    if-eq v0, p1, :cond_0

    .line 1006
    iput p1, p0, Landroid/webkit/WebSettingsClassic;->mDefaultFontSize:I

    .line 1007
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1009
    :cond_0
    monitor-exit p0

    return-void

    .line 1004
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultTextEncodingName(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 1447
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mDefaultTextEncoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1448
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mDefaultTextEncoding:Ljava/lang/String;

    .line 1449
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1451
    :cond_0
    monitor-exit p0

    return-void

    .line 1447
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V
    .locals 2
    .param p1, "zoom"    # Landroid/webkit/WebSettings$ZoomDensity;

    .prologue
    .line 693
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    if-eq v0, p1, :cond_0

    .line 694
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    .line 695
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mWebView:Landroid/webkit/WebViewClassic;

    iget v1, p1, Landroid/webkit/WebSettings$ZoomDensity;->value:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->adjustDefaultZoomDensity(I)V

    .line 697
    :cond_0
    return-void
.end method

.method public setDisplayZoomControls(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 524
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mDisplayZoomControls:Z

    .line 525
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 526
    return-void
.end method

.method public declared-synchronized setDomStorageEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1296
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mDomStorageEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1297
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mDomStorageEnabled:Z

    .line 1298
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1300
    :cond_0
    monitor-exit p0

    return-void

    .line 1296
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setDoubleTapToastCount(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 1682
    sget v0, Landroid/webkit/WebSettingsClassic;->mDoubleTapToastCount:I

    if-eq v0, p1, :cond_0

    .line 1683
    sput p1, Landroid/webkit/WebSettingsClassic;->mDoubleTapToastCount:I

    .line 1685
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mEventHandler:Landroid/webkit/WebSettingsClassic$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkit/WebSettingsClassic$EventHandler;->sendMessage(Landroid/os/Message;)Z
    invoke-static {v0, v1}, Landroid/webkit/WebSettingsClassic$EventHandler;->access$800(Landroid/webkit/WebSettingsClassic$EventHandler;Landroid/os/Message;)Z

    .line 1688
    :cond_0
    return-void
.end method

.method public setDoubleTapZoom(I)V
    .locals 1
    .param p1, "doubleTapZoom"    # I

    .prologue
    .line 674
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mDoubleTapZoom:I

    if-eq v0, p1, :cond_0

    .line 675
    iput p1, p0, Landroid/webkit/WebSettingsClassic;->mDoubleTapZoom:I

    .line 676
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic;->updateDoubleTapZoom(I)V

    .line 678
    :cond_0
    return-void
.end method

.method public setEnableSmoothTransition(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 589
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mEnableSmoothTransition:Z

    .line 590
    return-void
.end method

.method public declared-synchronized setFantasyFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 945
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mFantasyFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 946
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mFantasyFontFamily:Ljava/lang/String;

    .line 947
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 949
    :cond_0
    monitor-exit p0

    return-void

    .line 945
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFixedFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 869
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mFixedFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 870
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mFixedFontFamily:Ljava/lang/String;

    .line 871
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 873
    :cond_0
    monitor-exit p0

    return-void

    .line 869
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setForceUserScalable(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1643
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mForceUserScalable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1644
    monitor-exit p0

    return-void

    .line 1643
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeolocationDatabasePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "databasePath"    # Ljava/lang/String;

    .prologue
    .line 1238
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mGeolocationDatabasePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1240
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mGeolocationDatabasePath:Ljava/lang/String;

    .line 1241
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1243
    :cond_0
    monitor-exit p0

    return-void

    .line 1238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeolocationEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1344
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mGeolocationEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1345
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mGeolocationEnabled:Z

    .line 1346
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1348
    :cond_0
    monitor-exit p0

    return-void

    .line 1344
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHardwareAccelSkiaEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1162
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mHardwareAccelSkia:Z

    if-eq v0, p1, :cond_0

    .line 1163
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mHardwareAccelSkia:Z

    .line 1164
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1166
    :cond_0
    monitor-exit p0

    return-void

    .line 1162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1428
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mJavaScriptCanOpenWindowsAutomatically:Z

    if-eq v0, p1, :cond_0

    .line 1429
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 1430
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1432
    :cond_0
    monitor-exit p0

    return-void

    .line 1428
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaScriptEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1128
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mJavaScriptEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1129
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mJavaScriptEnabled:Z

    .line 1130
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V

    .line 1131
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic;->updateJavaScriptEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1133
    :cond_0
    monitor-exit p0

    return-void

    .line 1128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V
    .locals 2
    .param p1, "l"    # Landroid/webkit/WebSettings$LayoutAlgorithm;

    .prologue
    .line 825
    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne p1, v0, :cond_0

    .line 826
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "WebViewClassic does not support TEXT_AUTOSIZING layout mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 831
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-eq v0, p1, :cond_1

    .line 832
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 833
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 835
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public setLightTouchEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 712
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mLightTouchEnabled:Z

    .line 713
    return-void
.end method

.method public declared-synchronized setLinkPrefetchEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1366
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mLinkPrefetchEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1367
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mLinkPrefetchEnabled:Z

    .line 1368
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1370
    :cond_0
    monitor-exit p0

    return-void

    .line 1366
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLoadWithOverviewMode(Z)V
    .locals 0
    .param p1, "overview"    # Z

    .prologue
    .line 573
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mLoadWithOverviewMode:Z

    .line 574
    return-void
.end method

.method public declared-synchronized setLoadsImagesAutomatically(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1057
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mLoadsImagesAutomatically:Z

    if-eq v0, p1, :cond_0

    .line 1058
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mLoadsImagesAutomatically:Z

    .line 1059
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1061
    :cond_0
    monitor-exit p0

    return-void

    .line 1057
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMaximumDecodedImageSize(J)V
    .locals 2
    .param p1, "size"    # J

    .prologue
    .line 1594
    iget-wide v0, p0, Landroid/webkit/WebSettingsClassic;->mMaximumDecodedImageSize:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 1595
    iput-wide p1, p0, Landroid/webkit/WebSettingsClassic;->mMaximumDecodedImageSize:J

    .line 1596
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V

    .line 1598
    :cond_0
    return-void
.end method

.method public setMediaPlaybackRequiresUserGesture(Z)V
    .locals 1
    .param p1, "support"    # Z

    .prologue
    .line 488
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mMediaPlaybackRequiresUserGesture:Z

    if-eq v0, p1, :cond_0

    .line 489
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mMediaPlaybackRequiresUserGesture:Z

    .line 490
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V

    .line 492
    :cond_0
    return-void
.end method

.method public declared-synchronized setMinimumFontSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 964
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebSettingsClassic;->pin(I)I

    move-result p1

    .line 965
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mMinimumFontSize:I

    if-eq v0, p1, :cond_0

    .line 966
    iput p1, p0, Landroid/webkit/WebSettingsClassic;->mMinimumFontSize:I

    .line 967
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 969
    :cond_0
    monitor-exit p0

    return-void

    .line 964
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMinimumLogicalFontSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 984
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebSettingsClassic;->pin(I)I

    move-result p1

    .line 985
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mMinimumLogicalFontSize:I

    if-eq v0, p1, :cond_0

    .line 986
    iput p1, p0, Landroid/webkit/WebSettingsClassic;->mMinimumLogicalFontSize:I

    .line 987
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 989
    :cond_0
    monitor-exit p0

    return-void

    .line 984
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNavDump(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 454
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mNavDump:Z

    .line 455
    return-void
.end method

.method public setNeedInitialFocus(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1534
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mNeedInitialFocus:Z

    if-eq v0, p1, :cond_0

    .line 1535
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mNeedInitialFocus:Z

    .line 1537
    :cond_0
    return-void
.end method

.method public declared-synchronized setPageCacheCapacity(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1044
    monitor-enter p0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1045
    :cond_0
    const/16 v0, 0x14

    if-le p1, v0, :cond_1

    const/16 p1, 0x14

    .line 1046
    :cond_1
    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mPageCacheCapacity:I

    if-eq v0, p1, :cond_2

    .line 1047
    iput p1, p0, Landroid/webkit/WebSettingsClassic;->mPageCacheCapacity:I

    .line 1048
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1050
    :cond_2
    monitor-exit p0

    return-void

    .line 1044
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginState(Landroid/webkit/WebSettings$PluginState;)V
    .locals 1
    .param p1, "state"    # Landroid/webkit/WebSettings$PluginState;

    .prologue
    .line 1207
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    if-eq v0, p1, :cond_0

    .line 1208
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    .line 1209
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1211
    :cond_0
    monitor-exit p0

    return-void

    .line 1207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginsEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1199
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettingsClassic;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1200
    monitor-exit p0

    return-void

    .line 1199
    :cond_0
    :try_start_1
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginsPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "pluginsPath"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1219
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method declared-synchronized setPrivateBrowsingEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1620
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1621
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    .line 1625
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mAutoFillEnabled:Z

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettingsClassic;->setAutoFillEnabled(Z)V

    .line 1627
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1629
    :cond_0
    monitor-exit p0

    return-void

    .line 1620
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1691
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClassic;->nativeSetProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1692
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 1694
    :cond_0
    return-void
.end method

.method public declared-synchronized setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V
    .locals 3
    .param p1, "priority"    # Landroid/webkit/WebSettings$RenderPriority;

    .prologue
    .line 1549
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    if-eq v0, p1, :cond_0

    .line 1550
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    .line 1551
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mEventHandler:Landroid/webkit/WebSettingsClassic$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkit/WebSettingsClassic$EventHandler;->sendMessage(Landroid/os/Message;)Z
    invoke-static {v0, v1}, Landroid/webkit/WebSettingsClassic$EventHandler;->access$800(Landroid/webkit/WebSettingsClassic$EventHandler;Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1554
    :cond_0
    monitor-exit p0

    return-void

    .line 1549
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSansSerifFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 888
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mSansSerifFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 889
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mSansSerifFontFamily:Ljava/lang/String;

    .line 890
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 892
    :cond_0
    monitor-exit p0

    return-void

    .line 888
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSaveFormData(Z)V
    .locals 0
    .param p1, "save"    # Z

    .prologue
    .line 623
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mSaveFormData:Z

    .line 624
    return-void
.end method

.method public setSavePassword(Z)V
    .locals 0
    .param p1, "save"    # Z

    .prologue
    .line 639
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mSavePassword:Z

    .line 640
    return-void
.end method

.method public declared-synchronized setSerifFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 907
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mSerifFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 908
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mSerifFontFamily:Ljava/lang/String;

    .line 909
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    :cond_0
    monitor-exit p0

    return-void

    .line 907
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setShowVisualIndicator(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1180
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mShowVisualIndicator:Z

    if-eq v0, p1, :cond_0

    .line 1181
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mShowVisualIndicator:Z

    .line 1182
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1184
    :cond_0
    monitor-exit p0

    return-void

    .line 1180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setShrinksStandaloneImagesToFit(Z)V
    .locals 1
    .param p1, "shrink"    # Z

    .prologue
    .line 1582
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mShrinksStandaloneImagesToFit:Z

    if-eq v0, p1, :cond_0

    .line 1583
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mShrinksStandaloneImagesToFit:Z

    .line 1584
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V

    .line 1586
    :cond_0
    return-void
.end method

.method public declared-synchronized setStandardFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "font"    # Ljava/lang/String;

    .prologue
    .line 850
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mStandardFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 851
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mStandardFontFamily:Ljava/lang/String;

    .line 852
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 854
    :cond_0
    monitor-exit p0

    return-void

    .line 850
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSupportMultipleWindows(Z)V
    .locals 1
    .param p1, "support"    # Z

    .prologue
    .line 806
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mSupportMultipleWindows:Z

    if-eq v0, p1, :cond_0

    .line 807
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mSupportMultipleWindows:Z

    .line 808
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    :cond_0
    monitor-exit p0

    return-void

    .line 806
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSupportZoom(Z)V
    .locals 2
    .param p1, "support"    # Z

    .prologue
    .line 471
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mSupportZoom:Z

    .line 472
    iget-object v0, p0, Landroid/webkit/WebSettingsClassic;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 473
    return-void
.end method

.method declared-synchronized setSyntheticLinksEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1647
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mSyntheticLinksEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1648
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mSyntheticLinksEnabled:Z

    .line 1649
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1651
    :cond_0
    monitor-exit p0

    return-void

    .line 1647
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTextZoom(I)V
    .locals 1
    .param p1, "textZoom"    # I

    .prologue
    .line 655
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettingsClassic;->mTextSize:I

    if-eq v0, p1, :cond_0

    .line 656
    iput p1, p0, Landroid/webkit/WebSettingsClassic;->mTextSize:I

    .line 657
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    :cond_0
    monitor-exit p0

    return-void

    .line 655
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUseDoubleTree(Z)V
    .locals 0
    .param p1, "use"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 729
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public setUseWebViewBackgroundForOverscrollBackground(Z)V
    .locals 0
    .param p1, "view"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 606
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mUseWebViewBackgroundForOverscroll:Z

    .line 607
    return-void
.end method

.method public declared-synchronized setUseWideViewPort(Z)V
    .locals 1
    .param p1, "use"    # Z

    .prologue
    .line 787
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mUseWideViewport:Z

    if-eq v0, p1, :cond_0

    .line 788
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mUseWideViewport:Z

    .line 789
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 791
    :cond_0
    monitor-exit p0

    return-void

    .line 787
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserAgent(I)V
    .locals 3
    .param p1, "ua"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 747
    monitor-enter p0

    const/4 v0, 0x0

    .line 748
    .local v0, "uaString":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 749
    :try_start_0
    const-string v1, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    iget-object v2, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 764
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 752
    :cond_1
    :try_start_1
    const-string v0, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    .line 763
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettingsClassic;->setUserAgentString(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 747
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 754
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 755
    :try_start_2
    const-string v1, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v2, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 758
    const-string v0, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 760
    :cond_4
    if-eqz p1, :cond_2

    goto :goto_0
.end method

.method public declared-synchronized setUserAgentString(Ljava/lang/String;)V
    .locals 3
    .param p1, "ua"    # Ljava/lang/String;

    .prologue
    .line 1466
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 1467
    :cond_0
    sget-object v2, Landroid/webkit/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1468
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1469
    .local v0, "currentLocale":Ljava/util/Locale;
    sget-object v1, Landroid/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1470
    sput-object v0, Landroid/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    .line 1471
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebSettingsClassic;->mAcceptLanguage:Ljava/lang/String;

    .line 1473
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1474
    :try_start_2
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object p1

    .line 1475
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebSettingsClassic;->mUseDefaultUserAgent:Z

    .line 1480
    .end local v0    # "currentLocale":Ljava/util/Locale;
    :goto_0
    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1481
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    .line 1482
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1484
    :cond_2
    monitor-exit p0

    return-void

    .line 1473
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1466
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1477
    :cond_3
    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Landroid/webkit/WebSettingsClassic;->mUseDefaultUserAgent:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public declared-synchronized setWorkersEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1333
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mWorkersEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1334
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mWorkersEnabled:Z

    .line 1335
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1337
    :cond_0
    monitor-exit p0

    return-void

    .line 1333
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setXSSAuditorEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1356
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mXSSAuditorEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1357
    iput-boolean p1, p0, Landroid/webkit/WebSettingsClassic;->mXSSAuditorEnabled:Z

    .line 1358
    invoke-direct {p0}, Landroid/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1360
    :cond_0
    monitor-exit p0

    return-void

    .line 1356
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized supportMultipleWindows()Z
    .locals 1

    .prologue
    .line 817
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mSupportMultipleWindows:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public supportZoom()Z
    .locals 1

    .prologue
    .line 480
    iget-boolean v0, p0, Landroid/webkit/WebSettingsClassic;->mSupportZoom:Z

    return v0
.end method

.method declared-synchronized syncSettingsAndCreateHandler(Landroid/webkit/BrowserFrame;)V
    .locals 4
    .param p1, "frame"    # Landroid/webkit/BrowserFrame;

    .prologue
    .line 1706
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/webkit/WebSettingsClassic;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    .line 1711
    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    const-string v2, "WebViewSettings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1713
    .local v0, "sp":Landroid/content/SharedPreferences;
    sget v1, Landroid/webkit/WebSettingsClassic;->mDoubleTapToastCount:I

    if-lez v1, :cond_0

    .line 1714
    const-string v1, "double_tap_toast_count"

    sget v2, Landroid/webkit/WebSettingsClassic;->mDoubleTapToastCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/webkit/WebSettingsClassic;->mDoubleTapToastCount:I

    .line 1717
    :cond_0
    iget v1, p1, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-direct {p0, v1}, Landroid/webkit/WebSettingsClassic;->nativeSync(I)V

    .line 1718
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebSettingsClassic;->mSyncPending:Z

    .line 1719
    iget-object v1, p0, Landroid/webkit/WebSettingsClassic;->mEventHandler:Landroid/webkit/WebSettingsClassic$EventHandler;

    # invokes: Landroid/webkit/WebSettingsClassic$EventHandler;->createHandler()V
    invoke-static {v1}, Landroid/webkit/WebSettingsClassic$EventHandler;->access$900(Landroid/webkit/WebSettingsClassic$EventHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1720
    monitor-exit p0

    return-void

    .line 1706
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
