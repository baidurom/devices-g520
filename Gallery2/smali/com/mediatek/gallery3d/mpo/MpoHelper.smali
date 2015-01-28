.class public Lcom/mediatek/gallery3d/mpo/MpoHelper;
.super Ljava/lang/Object;
.source "MpoHelper.java"


# static fields
.field public static final FILE_EXTENSION:Ljava/lang/String; = "mpo"

.field public static final MIME_TYPE:Ljava/lang/String; = "image/mpo"

.field public static final MPO_EXTENSION:Ljava/lang/String; = "mpo"

.field public static final MPO_MIME_TYPE:Ljava/lang/String; = "image/mpo"

.field public static final MPO_VIEW_ACTION:Ljava/lang/String; = "com.mediatek.action.VIEW_MPO"

.field private static final TAG:Ljava/lang/String; = "MpoHelper"

.field private static sMavOverlay:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/gallery3d/mpo/MpoHelper;->sMavOverlay:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMpoDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/mediatek/common/mpodecoder/IMpoDecoder;
    .locals 6
    .parameter "jc"
    .parameter "cr"
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 72
    :try_start_0
    const-string v1, "MpoHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createMpoDecoder:uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v1, v2

    .line 80
    :goto_0
    return-object v1

    .line 76
    :cond_1
    const-class v1, Lcom/mediatek/common/mpodecoder/IMpoDecoder;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "decodeUri"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v1, v3}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/mpodecoder/IMpoDecoder;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v2

    .line 80
    goto :goto_0
.end method

.method public static createMpoDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;)Lcom/mediatek/common/mpodecoder/IMpoDecoder;
    .locals 6
    .parameter "jc"
    .parameter "filePath"

    .prologue
    const/4 v2, 0x0

    .line 57
    :try_start_0
    const-string v1, "MpoHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createMpoDecoder:filepath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    if-nez p1, :cond_0

    move-object v1, v2

    .line 65
    :goto_0
    return-object v1

    .line 61
    :cond_0
    const-class v1, Lcom/mediatek/common/mpodecoder/IMpoDecoder;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "decodeFile"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/mpodecoder/IMpoDecoder;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v2

    .line 65
    goto :goto_0
.end method

.method public static drawImageTypeOverlay(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 13
    .parameter "context"
    .parameter "bitmap"

    .prologue
    .line 180
    sget-object v10, Lcom/mediatek/gallery3d/mpo/MpoHelper;->sMavOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_0

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02008e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    sput-object v10, Lcom/mediatek/gallery3d/mpo/MpoHelper;->sMavOverlay:Landroid/graphics/drawable/Drawable;

    .line 183
    :cond_0
    sget-object v10, Lcom/mediatek/gallery3d/mpo/MpoHelper;->sMavOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 184
    .local v9, width:I
    sget-object v10, Lcom/mediatek/gallery3d/mpo/MpoHelper;->sMavOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 185
    .local v3, height:I
    int-to-float v10, v9

    int-to-float v11, v3

    div-float v0, v10, v11

    .line 186
    .local v0, aspectRatio:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 187
    .local v2, bmpWidth:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 188
    .local v1, bmpHeight:I
    if-ge v1, v2, :cond_1

    const/4 v4, 0x1

    .line 189
    .local v4, heightSmaller:Z
    :goto_0
    if-eqz v4, :cond_2

    move v10, v1

    :goto_1
    div-int/lit8 v6, v10, 0x5

    .line 190
    .local v6, scaleResult:I
    if-eqz v4, :cond_3

    .line 191
    move v3, v6

    .line 192
    int-to-float v10, v6

    mul-float/2addr v10, v0

    float-to-int v9, v10

    .line 197
    :goto_2
    sub-int v10, v2, v9

    div-int/lit8 v5, v10, 0x2

    .line 198
    .local v5, left:I
    sub-int v10, v1, v3

    div-int/lit8 v8, v10, 0x2

    .line 199
    .local v8, top:I
    sget-object v10, Lcom/mediatek/gallery3d/mpo/MpoHelper;->sMavOverlay:Landroid/graphics/drawable/Drawable;

    add-int v11, v5, v9

    add-int v12, v8, v3

    invoke-virtual {v10, v5, v8, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 200
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 201
    .local v7, tmpCanvas:Landroid/graphics/Canvas;
    sget-object v10, Lcom/mediatek/gallery3d/mpo/MpoHelper;->sMavOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 202
    return-void

    .line 188
    .end local v4           #heightSmaller:Z
    .end local v5           #left:I
    .end local v6           #scaleResult:I
    .end local v7           #tmpCanvas:Landroid/graphics/Canvas;
    .end local v8           #top:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .restart local v4       #heightSmaller:Z
    :cond_2
    move v10, v2

    .line 189
    goto :goto_1

    .line 194
    .restart local v6       #scaleResult:I
    :cond_3
    move v9, v6

    .line 195
    int-to-float v10, v9

    div-float/2addr v10, v0

    float-to-int v3, v10

    goto :goto_2
.end method

.method public static getMpoWhereClause(Z)Ljava/lang/String;
    .locals 1
    .parameter "showAllMpo"

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, mpoFilter:Ljava/lang/String;
    if-nez p0, :cond_0

    .line 87
    const-string v0, "mime_type!=\'image/mpo\'"

    .line 89
    :cond_0
    return-object v0
.end method

.method public static getWhereClause(I)Ljava/lang/String;
    .locals 9
    .parameter "mtkInclusion"

    .prologue
    const v8, 0x20003

    const v7, 0x20002

    const v6, 0x20001

    .line 93
    and-int/lit16 v4, p0, 0x3c0

    if-nez v4, :cond_1

    .line 94
    const/4 v1, 0x0

    .line 166
    :cond_0
    :goto_0
    return-object v1

    .line 96
    :cond_1
    const/4 v1, 0x0

    .line 97
    .local v1, whereClause:Ljava/lang/String;
    const-string v2, "mime_type=\'image/mpo\'"

    .line 99
    .local v2, whereClauseEx:Ljava/lang/String;
    const-string v3, "mime_type=\'image/mpo\'"

    .line 101
    .local v3, whereClauseIn:Ljava/lang/String;
    const/4 v0, 0x0

    .line 103
    .local v0, subWhereClause:Ljava/lang/String;
    and-int/lit8 v4, p0, 0x1

    if-eqz v4, :cond_8

    .line 104
    and-int/lit8 v4, p0, 0x40

    if-eqz v4, :cond_2

    .line 106
    if-nez v0, :cond_5

    const-string v0, "mpo_type=131075"

    .line 111
    :cond_2
    :goto_1
    and-int/lit16 v4, p0, 0x80

    if-eqz v4, :cond_3

    .line 113
    if-nez v0, :cond_6

    const-string v0, "mpo_type=131074"

    .line 118
    :cond_3
    :goto_2
    and-int/lit16 v4, p0, 0x100

    if-eqz v4, :cond_4

    .line 119
    if-nez v0, :cond_7

    const-string v0, "mpo_type=131073"

    .line 125
    :cond_4
    :goto_3
    if-eqz v0, :cond_0

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 106
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mpo_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 113
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mpo_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 119
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mpo_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 131
    :cond_8
    and-int/lit8 v4, p0, 0x40

    if-nez v4, :cond_9

    .line 133
    if-nez v0, :cond_c

    const-string v0, "mpo_type!=131075"

    .line 138
    :cond_9
    :goto_4
    and-int/lit16 v4, p0, 0x80

    if-nez v4, :cond_a

    .line 140
    if-nez v0, :cond_d

    const-string v0, "mpo_type!=131074"

    .line 145
    :cond_a
    :goto_5
    and-int/lit16 v4, p0, 0x100

    if-nez v4, :cond_b

    .line 146
    if-nez v0, :cond_e

    const-string v0, "mpo_type!=131073"

    .line 152
    :cond_b
    :goto_6
    if-eqz v0, :cond_f

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 133
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mpo_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 140
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mpo_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 146
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mpo_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 155
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public static playMpo(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 4
    .parameter "activity"
    .parameter "uri"

    .prologue
    .line 171
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.action.VIEW_MPO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v1, i:Landroid/content/Intent;
    const-string v2, "image/mpo"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "MpoHelper"

    const-string v3, "Unable to open mpo file: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
