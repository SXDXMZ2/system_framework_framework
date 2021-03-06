.class Landroid/webkit/WebIconDatabaseClassic;
.super Landroid/webkit/WebIconDatabase;
.source "WebIconDatabaseClassic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebIconDatabaseClassic$1;,
        Landroid/webkit/WebIconDatabaseClassic$EventHandler;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "WebIconDatabase"

.field private static sIconDatabase:Landroid/webkit/WebIconDatabaseClassic;


# instance fields
.field private final mEventHandler:Landroid/webkit/WebIconDatabaseClassic$EventHandler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 280
    invoke-direct {p0}, Landroid/webkit/WebIconDatabase;-><init>()V

    .line 37
    new-instance v0, Landroid/webkit/WebIconDatabaseClassic$EventHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/webkit/WebIconDatabaseClassic$EventHandler;-><init>(Landroid/webkit/WebIconDatabaseClassic$1;)V

    iput-object v0, p0, Landroid/webkit/WebIconDatabaseClassic;->mEventHandler:Landroid/webkit/WebIconDatabaseClassic$EventHandler;

    .line 280
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p0}, Landroid/webkit/WebIconDatabaseClassic;->nativeOpen(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Landroid/webkit/WebIconDatabaseClassic;->nativeClose()V

    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Landroid/webkit/WebIconDatabaseClassic;->nativeRemoveAllIcons()V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p0}, Landroid/webkit/WebIconDatabaseClassic;->nativeRetainIconForPageUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p0}, Landroid/webkit/WebIconDatabaseClassic;->nativeReleaseIconForPageUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p0}, Landroid/webkit/WebIconDatabaseClassic;->nativeIconForPageUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Landroid/webkit/WebIconDatabaseClassic;
    .locals 1

    .prologue
    .line 263
    sget-object v0, Landroid/webkit/WebIconDatabaseClassic;->sIconDatabase:Landroid/webkit/WebIconDatabaseClassic;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Landroid/webkit/WebIconDatabaseClassic;

    invoke-direct {v0}, Landroid/webkit/WebIconDatabaseClassic;-><init>()V

    sput-object v0, Landroid/webkit/WebIconDatabaseClassic;->sIconDatabase:Landroid/webkit/WebIconDatabaseClassic;

    .line 266
    :cond_0
    sget-object v0, Landroid/webkit/WebIconDatabaseClassic;->sIconDatabase:Landroid/webkit/WebIconDatabaseClassic;

    return-object v0
.end method

.method private static native nativeClose()V
.end method

.method private static native nativeIconForPageUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeOpen(Ljava/lang/String;)V
.end method

.method private static native nativeReleaseIconForPageUrl(Ljava/lang/String;)V
.end method

.method private static native nativeRemoveAllIcons()V
.end method

.method private static native nativeRetainIconForPageUrl(Ljava/lang/String;)V
.end method


# virtual methods
.method public bulkRequestIconForPageUrl(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V
    .locals 4
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/webkit/WebIconDatabase$IconListener;

    .prologue
    .line 219
    if-nez p3, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebIconDatabaseClassic;->mEventHandler:Landroid/webkit/WebIconDatabaseClassic$EventHandler;

    # invokes: Landroid/webkit/WebIconDatabaseClassic$EventHandler;->hasHandler()Z
    invoke-static {v2}, Landroid/webkit/WebIconDatabaseClassic$EventHandler;->access$1000(Landroid/webkit/WebIconDatabaseClassic$EventHandler;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 230
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "contentResolver"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string/jumbo v2, "where"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v2, "listener"

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 235
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/webkit/WebIconDatabaseClassic;->mEventHandler:Landroid/webkit/WebIconDatabaseClassic$EventHandler;

    # invokes: Landroid/webkit/WebIconDatabaseClassic$EventHandler;->postMessage(Landroid/os/Message;)V
    invoke-static {v2, v1}, Landroid/webkit/WebIconDatabaseClassic$EventHandler;->access$900(Landroid/webkit/WebIconDatabaseClassic$EventHandler;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Landroid/webkit/WebIconDatabaseClassic;->mEventHandler:Landroid/webkit/WebIconDatabaseClassic$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkit/WebIconDatabaseClassic$EventHandler;->postMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebIconDatabaseClassic$EventHandler;->access$900(Landroid/webkit/WebIconDatabaseClassic$EventHandler;Landroid/os/Message;)V

    .line 192
    return-void
.end method

.method createHandler()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Landroid/webkit/WebIconDatabaseClassic;->mEventHandler:Landroid/webkit/WebIconDatabaseClassic$EventHandler;

    # invokes: Landroid/webkit/WebIconDatabaseClassic$EventHandler;->createHandler()V
    invoke-static {v0}, Landroid/webkit/WebIconDatabaseClassic$EventHandler;->access$1100(Landroid/webkit/WebIconDatabaseClassic$EventHandler;)V

    .line 275
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 177
    if-eqz p1, :cond_1

    .line 179
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "db":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 183
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebIconDatabaseClassic;->mEventHandler:Landroid/webkit/WebIconDatabaseClassic$EventHandler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    # invokes: Landroid/webkit/WebIconDatabaseClassic$EventHandler;->postMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/webkit/WebIconDatabaseClassic$EventHandler;->access$900(Landroid/webkit/WebIconDatabaseClassic$EventHandler;Landroid/os/Message;)V

    .line 186
    .end local v0    # "db":Ljava/io/File;
    :cond_1
    return-void
.end method

.method public releaseIconForPageUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 249
    if-eqz p1, :cond_0

    .line 250
    iget-object v0, p0, Landroid/webkit/WebIconDatabaseClassic;->mEventHandler:Landroid/webkit/WebIconDatabaseClassic$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkit/WebIconDatabaseClassic$EventHandler;->postMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebIconDatabaseClassic$EventHandler;->access$900(Landroid/webkit/WebIconDatabaseClassic$EventHandler;Landroid/os/Message;)V

    .line 253
    :cond_0
    return-void
.end method

.method public removeAllIcons()V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Landroid/webkit/WebIconDatabaseClassic;->mEventHandler:Landroid/webkit/WebIconDatabaseClassic$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkit/WebIconDatabaseClassic$EventHandler;->postMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebIconDatabaseClassic$EventHandler;->access$900(Landroid/webkit/WebIconDatabaseClassic$EventHandler;Landroid/os/Message;)V

    .line 198
    return-void
.end method

.method public requestIconForPageUrl(Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/webkit/WebIconDatabase$IconListener;

    .prologue
    .line 207
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 211
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Landroid/webkit/WebIconDatabaseClassic;->mEventHandler:Landroid/webkit/WebIconDatabaseClassic$EventHandler;

    # invokes: Landroid/webkit/WebIconDatabaseClassic$EventHandler;->postMessage(Landroid/os/Message;)V
    invoke-static {v1, v0}, Landroid/webkit/WebIconDatabaseClassic$EventHandler;->access$900(Landroid/webkit/WebIconDatabaseClassic$EventHandler;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public retainIconForPageUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 241
    if-eqz p1, :cond_0

    .line 242
    iget-object v0, p0, Landroid/webkit/WebIconDatabaseClassic;->mEventHandler:Landroid/webkit/WebIconDatabaseClassic$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkit/WebIconDatabaseClassic$EventHandler;->postMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebIconDatabaseClassic$EventHandler;->access$900(Landroid/webkit/WebIconDatabaseClassic$EventHandler;Landroid/os/Message;)V

    .line 245
    :cond_0
    return-void
.end method
