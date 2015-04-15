.class Landroid/mtp/MtpPropertyGroup;
.super Ljava/lang/Object;
.source "MtpPropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpPropertyGroup$Property;
    }
.end annotation


# static fields
.field private static final FORMAT_WHERE:Ljava/lang/String; = "format=?"

.field private static final ID_FORMAT_WHERE:Ljava/lang/String; = "_id=? AND format=?"

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field private static final PARENT_FORMAT_WHERE:Ljava/lang/String; = "parent=? AND format=?"

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final TAG:Ljava/lang/String; = "MtpPropertyGroup"


# instance fields
.field private mColumns:[Ljava/lang/String;

.field private final mDatabase:Landroid/mtp/MtpDatabase;

.field private final mPackageName:Ljava/lang/String;

.field private final mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

.field private final mProvider:Landroid/content/IContentProvider;

.field private final mUri:Landroid/net/Uri;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 5
    .param p1, "database"    # Landroid/mtp/MtpDatabase;
    .param p2, "provider"    # Landroid/content/IContentProvider;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "volume"    # Ljava/lang/String;
    .param p5, "properties"    # [I

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup;->mDatabase:Landroid/mtp/MtpDatabase;

    .line 79
    iput-object p2, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    .line 80
    iput-object p3, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    .line 81
    iput-object p4, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    .line 82
    invoke-static {p4}, Lcom/sonyericsson/provider/SemcMediaStore$ExtendedFiles;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    .line 84
    array-length v1, p5

    .line 85
    .local v1, "count":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    .local v0, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "_id"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    new-array v3, v1, [Landroid/mtp/MtpPropertyGroup$Property;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    .line 89
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 90
    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget v4, p5, v2

    invoke-direct {p0, v4, v0}, Landroid/mtp/MtpPropertyGroup;->createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;

    move-result-object v4

    aput-object v4, v3, v2

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 93
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    .line 94
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 95
    iget-object v4, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v2

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 97
    :cond_1
    return-void
.end method

.method private createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;
    .locals 5
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/mtp/MtpPropertyGroup$Property;"
        }
    .end annotation

    .prologue
    .line 100
    .local p2, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 103
    .local v0, "column":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 237
    const/4 v1, 0x0

    .line 238
    .local v1, "type":I
    const-string v2, "MtpPropertyGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unsupported property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :goto_0
    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    .line 246
    :goto_1
    return-object v2

    .line 105
    .end local v1    # "type":I
    :sswitch_0
    const-string/jumbo v0, "storage_id"

    .line 106
    const/4 v1, 0x6

    .line 107
    .restart local v1    # "type":I
    goto :goto_0

    .line 109
    .end local v1    # "type":I
    :sswitch_1
    const-string v0, "format"

    .line 110
    const/4 v1, 0x4

    .line 111
    .restart local v1    # "type":I
    goto :goto_0

    .line 114
    .end local v1    # "type":I
    :sswitch_2
    const/4 v1, 0x4

    .line 115
    .restart local v1    # "type":I
    goto :goto_0

    .line 117
    .end local v1    # "type":I
    :sswitch_3
    const-string v0, "_size"

    .line 118
    const/16 v1, 0x8

    .line 119
    .restart local v1    # "type":I
    goto :goto_0

    .line 121
    .end local v1    # "type":I
    :sswitch_4
    const-string v0, "_data"

    .line 122
    const v1, 0xffff

    .line 123
    .restart local v1    # "type":I
    goto :goto_0

    .line 125
    .end local v1    # "type":I
    :sswitch_5
    const-string/jumbo v0, "title"

    .line 126
    const v1, 0xffff

    .line 127
    .restart local v1    # "type":I
    goto :goto_0

    .line 129
    .end local v1    # "type":I
    :sswitch_6
    const-string v0, "date_modified"

    .line 130
    const v1, 0xffff

    .line 131
    .restart local v1    # "type":I
    goto :goto_0

    .line 133
    .end local v1    # "type":I
    :sswitch_7
    const-string v0, "date_added"

    .line 134
    const v1, 0xffff

    .line 135
    .restart local v1    # "type":I
    goto :goto_0

    .line 137
    .end local v1    # "type":I
    :sswitch_8
    const-string/jumbo v0, "year"

    .line 138
    const v1, 0xffff

    .line 139
    .restart local v1    # "type":I
    goto :goto_0

    .line 141
    .end local v1    # "type":I
    :sswitch_9
    const-string/jumbo v0, "parent"

    .line 142
    const/4 v1, 0x6

    .line 143
    .restart local v1    # "type":I
    goto :goto_0

    .line 146
    .end local v1    # "type":I
    :sswitch_a
    const-string/jumbo v0, "storage_id"

    .line 147
    const/16 v1, 0xa

    .line 148
    .restart local v1    # "type":I
    goto :goto_0

    .line 150
    .end local v1    # "type":I
    :sswitch_b
    const-string v0, "duration"

    .line 151
    const/4 v1, 0x6

    .line 152
    .restart local v1    # "type":I
    goto :goto_0

    .line 154
    .end local v1    # "type":I
    :sswitch_c
    const-string/jumbo v0, "track"

    .line 155
    const/4 v1, 0x4

    .line 156
    .restart local v1    # "type":I
    goto :goto_0

    .line 158
    .end local v1    # "type":I
    :sswitch_d
    const-string v0, "_display_name"

    .line 159
    const v1, 0xffff

    .line 160
    .restart local v1    # "type":I
    goto :goto_0

    .line 162
    .end local v1    # "type":I
    :sswitch_e
    const v1, 0xffff

    .line 163
    .restart local v1    # "type":I
    goto :goto_0

    .line 165
    .end local v1    # "type":I
    :sswitch_f
    const v1, 0xffff

    .line 166
    .restart local v1    # "type":I
    goto :goto_0

    .line 168
    .end local v1    # "type":I
    :sswitch_10
    const-string v0, "album_artist"

    .line 169
    const v1, 0xffff

    .line 170
    .restart local v1    # "type":I
    goto :goto_0

    .line 173
    .end local v1    # "type":I
    :sswitch_11
    const v1, 0xffff

    .line 174
    .restart local v1    # "type":I
    goto :goto_0

    .line 176
    .end local v1    # "type":I
    :sswitch_12
    const-string v0, "composer"

    .line 177
    const v1, 0xffff

    .line 178
    .restart local v1    # "type":I
    goto :goto_0

    .line 180
    .end local v1    # "type":I
    :sswitch_13
    const-string v0, "description"

    .line 181
    const v1, 0xffff

    .line 182
    .restart local v1    # "type":I
    goto :goto_0

    .line 185
    .end local v1    # "type":I
    :sswitch_14
    const/4 v1, 0x2

    .line 186
    .restart local v1    # "type":I
    goto :goto_0

    .line 188
    .end local v1    # "type":I
    :sswitch_15
    const-string/jumbo v0, "width"

    .line 189
    const/4 v1, 0x6

    .line 190
    .restart local v1    # "type":I
    goto :goto_0

    .line 192
    .end local v1    # "type":I
    :sswitch_16
    const-string v0, "height"

    .line 193
    const/4 v1, 0x6

    .line 194
    .restart local v1    # "type":I
    goto/16 :goto_0

    .line 196
    .end local v1    # "type":I
    :sswitch_17
    const-string v0, "audiosamplerate"

    .line 197
    const/4 v1, 0x6

    .line 198
    .restart local v1    # "type":I
    goto/16 :goto_0

    .line 200
    .end local v1    # "type":I
    :sswitch_18
    const-string v0, "audionumchannels"

    .line 201
    const/4 v1, 0x4

    .line 202
    .restart local v1    # "type":I
    goto/16 :goto_0

    .line 204
    .end local v1    # "type":I
    :sswitch_19
    const-string v0, "audiowavecodec"

    .line 205
    const/4 v1, 0x6

    .line 206
    .restart local v1    # "type":I
    goto/16 :goto_0

    .line 208
    .end local v1    # "type":I
    :sswitch_1a
    const-string v0, "audiobitrate"

    .line 209
    const/4 v1, 0x6

    .line 210
    .restart local v1    # "type":I
    goto/16 :goto_0

    .line 212
    .end local v1    # "type":I
    :sswitch_1b
    const-string/jumbo v0, "videoscantype"

    .line 213
    const/4 v1, 0x4

    .line 214
    .restart local v1    # "type":I
    goto/16 :goto_0

    .line 216
    .end local v1    # "type":I
    :sswitch_1c
    const-string/jumbo v0, "videofourcccodec"

    .line 217
    const/4 v1, 0x6

    .line 218
    .restart local v1    # "type":I
    goto/16 :goto_0

    .line 220
    .end local v1    # "type":I
    :sswitch_1d
    const-string/jumbo v0, "videobitrate"

    .line 221
    const/4 v1, 0x6

    .line 222
    .restart local v1    # "type":I
    goto/16 :goto_0

    .line 224
    .end local v1    # "type":I
    :sswitch_1e
    const-string/jumbo v0, "videoframesperthousandseconds"

    .line 225
    const/4 v1, 0x6

    .line 226
    .restart local v1    # "type":I
    goto/16 :goto_0

    .line 228
    .end local v1    # "type":I
    :sswitch_1f
    const-string/jumbo v0, "videoencodingprofile"

    .line 229
    const v1, 0xffff

    .line 230
    .restart local v1    # "type":I
    goto/16 :goto_0

    .line 234
    .end local v1    # "type":I
    :sswitch_20
    const/16 v1, 0x4008

    .line 235
    .restart local v1    # "type":I
    goto/16 :goto_0

    .line 246
    :cond_0
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    const/4 v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    goto/16 :goto_1

    .line 103
    nop

    :sswitch_data_0
    .sparse-switch
        0xd920 -> :sswitch_20
        0xdc01 -> :sswitch_0
        0xdc02 -> :sswitch_1
        0xdc03 -> :sswitch_2
        0xdc04 -> :sswitch_3
        0xdc07 -> :sswitch_4
        0xdc09 -> :sswitch_6
        0xdc0b -> :sswitch_9
        0xdc41 -> :sswitch_a
        0xdc44 -> :sswitch_5
        0xdc46 -> :sswitch_e
        0xdc48 -> :sswitch_13
        0xdc4e -> :sswitch_7
        0xdc4f -> :sswitch_14
        0xdc87 -> :sswitch_15
        0xdc88 -> :sswitch_16
        0xdc89 -> :sswitch_b
        0xdc8b -> :sswitch_c
        0xdc8c -> :sswitch_11
        0xdc96 -> :sswitch_12
        0xdc99 -> :sswitch_8
        0xdc9a -> :sswitch_f
        0xdc9b -> :sswitch_10
        0xdce0 -> :sswitch_d
        0xde93 -> :sswitch_17
        0xde94 -> :sswitch_18
        0xde97 -> :sswitch_1b
        0xde99 -> :sswitch_19
        0xde9a -> :sswitch_1a
        0xde9b -> :sswitch_1c
        0xde9c -> :sswitch_1d
        0xde9d -> :sswitch_1e
        0xdea1 -> :sswitch_1f
    .end sparse-switch
.end method

.method private native format_date_time(J)Ljava/lang/String;
.end method

.method public static nameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 337
    const/4 v2, 0x0

    .line 338
    .local v2, "start":I
    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 339
    .local v1, "lastSlash":I
    if-ltz v1, :cond_0

    .line 340
    add-int/lit8 v2, v1, 0x1

    .line 342
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 343
    .local v0, "end":I
    sub-int v3, v0, v2

    const/16 v4, 0xff

    if-le v3, v4, :cond_1

    .line 344
    add-int/lit16 v0, v2, 0xff

    .line 346
    :cond_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private queryAudio(ILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # I
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 272
    const/4 v8, 0x0

    .line 274
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 277
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 285
    if-eqz v8, :cond_0

    .line 286
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 280
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    if-eqz v8, :cond_0

    .line 286
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 282
    :catch_0
    move-exception v9

    .line 285
    .local v9, "e":Ljava/lang/Exception;
    if-eqz v8, :cond_2

    .line 286
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v10

    goto :goto_0

    .line 285
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 286
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryGenre(I)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # I

    .prologue
    const/4 v10, 0x0

    .line 292
    const/4 v8, 0x0

    .line 294
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUriForAudioId(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    .line 295
    .local v2, "uri":Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "name"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 298
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 307
    if-eqz v8, :cond_0

    .line 308
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v0

    .line 301
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    if-eqz v8, :cond_0

    .line 308
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 303
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v9

    .line 304
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "MtpPropertyGroup"

    const-string/jumbo v1, "queryGenre exception"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    if-eqz v8, :cond_2

    .line 308
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v10

    goto :goto_0

    .line 307
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 308
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryLong(ILjava/lang/String;)Ljava/lang/Long;
    .locals 10
    .param p1, "id"    # I
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 314
    const/4 v8, 0x0

    .line 317
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 320
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    new-instance v0, Ljava/lang/Long;

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    if-eqz v8, :cond_0

    .line 326
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_0
    :goto_0
    return-object v0

    .line 325
    :cond_1
    if-eqz v8, :cond_2

    .line 326
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v0, v9

    .line 329
    goto :goto_0

    .line 323
    :catch_0
    move-exception v0

    .line 325
    if-eqz v8, :cond_2

    .line 326
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 325
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 326
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryString(ILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # I
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 251
    const/4 v8, 0x0

    .line 254
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 257
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 265
    if-eqz v8, :cond_0

    .line 266
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 260
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    if-eqz v8, :cond_0

    .line 266
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 262
    :catch_0
    move-exception v9

    .line 265
    .local v9, "e":Ljava/lang/Exception;
    if-eqz v8, :cond_2

    .line 266
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v10

    goto :goto_0

    .line 265
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 266
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method getPropertyList(III)Landroid/mtp/MtpPropertyList;
    .locals 34
    .param p1, "handle"    # I
    .param p2, "format"    # I
    .param p3, "depth"    # I

    .prologue
    .line 351
    const/4 v2, 0x1

    move/from16 v0, p3

    if-gt v0, v2, :cond_0

    const/4 v2, -0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_1

    .line 352
    :cond_0
    if-nez p1, :cond_4

    const/4 v2, -0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_4

    .line 354
    const/16 p1, -0x1

    .line 355
    const/16 p3, 0x0

    .line 366
    :cond_1
    if-nez p2, :cond_7

    .line 367
    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    .line 369
    const/4 v6, 0x0

    .line 370
    .local v6, "where":Ljava/lang/String;
    const/4 v7, 0x0

    .line 394
    .local v7, "whereArgs":[Ljava/lang/String;
    :goto_0
    const/16 v20, 0x0

    .line 397
    .local v20, "c":Landroid/database/Cursor;
    if-gtz p3, :cond_2

    const/4 v2, -0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_a

    .line 398
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v20

    .line 399
    if-nez v20, :cond_a

    .line 400
    new-instance v8, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    const/16 v3, 0x2009

    invoke-direct {v8, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    if-eqz v20, :cond_3

    .line 547
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .end local v6    # "where":Ljava/lang/String;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    .end local v20    # "c":Landroid/database/Cursor;
    :cond_3
    :goto_1
    return-object v8

    .line 359
    :cond_4
    new-instance v8, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    const v3, 0xa808

    invoke-direct {v8, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    goto :goto_1

    .line 372
    :cond_5
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .line 373
    .restart local v7    # "whereArgs":[Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_6

    .line 374
    const-string/jumbo v6, "parent=?"

    .restart local v6    # "where":Ljava/lang/String;
    goto :goto_0

    .line 376
    .end local v6    # "where":Ljava/lang/String;
    :cond_6
    const-string v6, "_id=?"

    .restart local v6    # "where":Ljava/lang/String;
    goto :goto_0

    .line 380
    .end local v6    # "where":Ljava/lang/String;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    :cond_7
    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    .line 382
    const-string v6, "format=?"

    .line 383
    .restart local v6    # "where":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .restart local v7    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 385
    .end local v6    # "where":Ljava/lang/String;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    :cond_8
    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v2, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .line 386
    .restart local v7    # "whereArgs":[Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_9

    .line 387
    const-string/jumbo v6, "parent=? AND format=?"

    .restart local v6    # "where":Ljava/lang/String;
    goto/16 :goto_0

    .line 389
    .end local v6    # "where":Ljava/lang/String;
    :cond_9
    const-string v6, "_id=? AND format=?"

    .restart local v6    # "where":Ljava/lang/String;
    goto/16 :goto_0

    .line 404
    .restart local v20    # "c":Landroid/database/Cursor;
    :cond_a
    if-nez v20, :cond_c

    const/16 v22, 0x1

    .line 405
    .local v22, "count":I
    :goto_2
    :try_start_1
    new-instance v8, Landroid/mtp/MtpPropertyList;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v2, v2

    mul-int v2, v2, v22

    const/16 v3, 0x2001

    invoke-direct {v8, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 409
    .local v8, "result":Landroid/mtp/MtpPropertyList;
    const/16 v29, 0x0

    .local v29, "objectIndex":I
    :goto_3
    move/from16 v0, v29

    move/from16 v1, v22

    if-ge v0, v1, :cond_16

    .line 410
    if-eqz v20, :cond_b

    .line 411
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    .line 412
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 p1, v0

    .line 416
    :cond_b
    const/16 v31, 0x0

    .local v31, "propertyIndex":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v2, v2

    move/from16 v0, v31

    if-ge v0, v2, :cond_15

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget-object v30, v2, v31

    .line 418
    .local v30, "property":Landroid/mtp/MtpPropertyGroup$Property;
    move-object/from16 v0, v30

    iget v10, v0, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    .line 419
    .local v10, "propertyCode":I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    move/from16 v21, v0

    .line 422
    .local v21, "column":I
    sparse-switch v10, :sswitch_data_0

    .line 529
    move-object/from16 v0, v30

    iget v2, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const v3, 0xffff

    if-ne v2, v3, :cond_13

    .line 530
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 416
    :goto_5
    add-int/lit8 v31, v31, 0x1

    goto :goto_4

    .line 404
    .end local v8    # "result":Landroid/mtp/MtpPropertyList;
    .end local v10    # "propertyCode":I
    .end local v21    # "column":I
    .end local v22    # "count":I
    .end local v29    # "objectIndex":I
    .end local v30    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .end local v31    # "propertyIndex":I
    :cond_c
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v22

    goto :goto_2

    .line 425
    .restart local v8    # "result":Landroid/mtp/MtpPropertyList;
    .restart local v10    # "propertyCode":I
    .restart local v21    # "column":I
    .restart local v22    # "count":I
    .restart local v29    # "objectIndex":I
    .restart local v30    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v31    # "propertyIndex":I
    :sswitch_0
    const/4 v11, 0x2

    const-wide/16 v12, 0x0

    move/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 543
    .end local v8    # "result":Landroid/mtp/MtpPropertyList;
    .end local v10    # "propertyCode":I
    .end local v21    # "column":I
    .end local v22    # "count":I
    .end local v29    # "objectIndex":I
    .end local v30    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .end local v31    # "propertyIndex":I
    :catch_0
    move-exception v24

    .line 544
    .local v24, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v8, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    const/16 v3, 0x2002

    invoke-direct {v8, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 546
    if-eqz v20, :cond_3

    .line 547
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 430
    .end local v24    # "e":Landroid/os/RemoteException;
    .restart local v8    # "result":Landroid/mtp/MtpPropertyList;
    .restart local v10    # "propertyCode":I
    .restart local v21    # "column":I
    .restart local v22    # "count":I
    .restart local v29    # "objectIndex":I
    .restart local v30    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v31    # "propertyIndex":I
    :sswitch_1
    const/4 v11, 0x4

    :try_start_3
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v12, v2

    move/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 546
    .end local v8    # "result":Landroid/mtp/MtpPropertyList;
    .end local v10    # "propertyCode":I
    .end local v21    # "column":I
    .end local v22    # "count":I
    .end local v29    # "objectIndex":I
    .end local v30    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .end local v31    # "propertyIndex":I
    :catchall_0
    move-exception v2

    if-eqz v20, :cond_d

    .line 547
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v2

    .line 442
    .restart local v8    # "result":Landroid/mtp/MtpPropertyList;
    .restart local v10    # "propertyCode":I
    .restart local v21    # "column":I
    .restart local v22    # "count":I
    .restart local v29    # "objectIndex":I
    .restart local v30    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v31    # "propertyIndex":I
    :sswitch_2
    const/4 v11, 0x6

    :try_start_4
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v12, v2

    move/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_5

    .line 447
    :sswitch_3
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 448
    .local v25, "encProfile":Ljava/lang/String;
    move/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v10, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_5

    .line 452
    .end local v25    # "encProfile":Ljava/lang/String;
    :sswitch_4
    const/4 v11, 0x4

    const-wide/16 v12, 0x0

    move/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_5

    .line 456
    :sswitch_5
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 457
    .local v32, "value":Ljava/lang/String;
    if-eqz v32, :cond_e

    .line 458
    invoke-static/range {v32 .. v32}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_5

    .line 460
    :cond_e
    const/16 v2, 0x2009

    invoke-virtual {v8, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_5

    .line 465
    .end local v32    # "value":Ljava/lang/String;
    :sswitch_6
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 467
    .local v28, "name":Ljava/lang/String;
    if-nez v28, :cond_f

    .line 468
    const-string/jumbo v2, "name"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 471
    :cond_f
    if-nez v28, :cond_10

    .line 472
    const-string v2, "_data"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 473
    if-eqz v28, :cond_10

    .line 474
    invoke-static/range {v28 .. v28}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 477
    :cond_10
    if-eqz v28, :cond_11

    .line 478
    move/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v8, v0, v10, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 480
    :cond_11
    const/16 v2, 0x2009

    invoke-virtual {v8, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto/16 :goto_5

    .line 486
    .end local v28    # "name":Ljava/lang/String;
    :sswitch_7
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 490
    :sswitch_8
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 491
    .local v33, "year":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0101T000000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 492
    .local v23, "dateTime":Ljava/lang/String;
    move/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v10, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 496
    .end local v23    # "dateTime":Ljava/lang/String;
    .end local v33    # "year":I
    :sswitch_9
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 497
    .local v12, "puid":J
    const/16 v2, 0x20

    shl-long/2addr v12, v2

    .line 498
    move/from16 v0, p1

    int-to-long v2, v0

    add-long/2addr v12, v2

    .line 499
    const/16 v11, 0xa

    move/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    .line 502
    .end local v12    # "puid":J
    :sswitch_a
    const/16 v17, 0x4

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    rem-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    move-wide/from16 v18, v0

    move-object v14, v8

    move/from16 v15, p1

    move/from16 v16, v10

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    .line 506
    :sswitch_b
    const-string v2, "artist"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 510
    :sswitch_c
    const-string v2, "album"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 514
    :sswitch_d
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MtpPropertyGroup;->queryGenre(I)Ljava/lang/String;

    move-result-object v26

    .line 515
    .local v26, "genre":Ljava/lang/String;
    if-eqz v26, :cond_12

    .line 516
    move/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v8, v0, v10, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 518
    :cond_12
    const/16 v2, 0x2009

    invoke-virtual {v8, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto/16 :goto_5

    .line 524
    .end local v26    # "genre":Ljava/lang/String;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mDatabase:Landroid/mtp/MtpDatabase;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/mtp/MtpDatabase;->getHostIdsAsString(I)Ljava/lang/String;

    move-result-object v27

    .line 525
    .local v27, "hostIds":Ljava/lang/String;
    const/16 v2, 0x4008

    move/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v8, v0, v10, v2, v1}, Landroid/mtp/MtpPropertyList;->append(IIILjava/lang/String;)V

    goto/16 :goto_5

    .line 531
    .end local v27    # "hostIds":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, v30

    iget v2, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    if-nez v2, :cond_14

    .line 532
    move-object/from16 v0, v30

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move/from16 v17, v0

    const-wide/16 v18, 0x0

    move-object v14, v8

    move/from16 v15, p1

    move/from16 v16, v10

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    .line 534
    :cond_14
    move-object/from16 v0, v30

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move/from16 v17, v0

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-object v14, v8

    move/from16 v15, p1

    move/from16 v16, v10

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_5

    .line 409
    .end local v10    # "propertyCode":I
    .end local v21    # "column":I
    .end local v30    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    :cond_15
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_3

    .line 546
    .end local v31    # "propertyIndex":I
    :cond_16
    if-eqz v20, :cond_3

    .line 547
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 422
    :sswitch_data_0
    .sparse-switch
        0xd920 -> :sswitch_e
        0xdc03 -> :sswitch_4
        0xdc07 -> :sswitch_5
        0xdc09 -> :sswitch_7
        0xdc41 -> :sswitch_9
        0xdc44 -> :sswitch_6
        0xdc46 -> :sswitch_b
        0xdc4e -> :sswitch_7
        0xdc4f -> :sswitch_0
        0xdc87 -> :sswitch_2
        0xdc88 -> :sswitch_2
        0xdc8b -> :sswitch_a
        0xdc8c -> :sswitch_d
        0xdc99 -> :sswitch_8
        0xdc9a -> :sswitch_c
        0xde93 -> :sswitch_2
        0xde94 -> :sswitch_1
        0xde97 -> :sswitch_1
        0xde99 -> :sswitch_2
        0xde9a -> :sswitch_2
        0xde9b -> :sswitch_2
        0xde9c -> :sswitch_2
        0xde9d -> :sswitch_2
        0xdea1 -> :sswitch_3
    .end sparse-switch
.end method
