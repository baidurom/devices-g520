.class public Lcom/android/gallery3d/gadget/WidgetConfigure;
.super Landroid/app/Activity;
.source "WidgetConfigure.java"


# static fields
.field public static final KEY_WIDGET_TYPE:Ljava/lang/String; = "widget-type"

.field private static MAX_WIDGET_SIDE:I = 0x0

.field private static final REQUEST_CHOOSE_ALBUM:I = 0x2

.field private static final REQUEST_CROP_IMAGE:I = 0x3

.field private static final REQUEST_GET_PHOTO:I = 0x4

.field private static final REQUEST_WIDGET_TYPE:I = 0x1

.field public static final RESULT_ERROR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WidgetConfigure"

.field private static WIDGET_SCALE_FACTOR:F


# instance fields
.field private mAppWidgetId:I

.field private mPickedItem:Landroid/net/Uri;

.field private mWidgetType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/high16 v0, 0x3fc0

    sput v0, Lcom/android/gallery3d/gadget/WidgetConfigure;->WIDGET_SCALE_FACTOR:F

    .line 60
    const/16 v0, 0x168

    sput v0, Lcom/android/gallery3d/gadget/WidgetConfigure;->MAX_WIDGET_SIDE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mWidgetType:I

    return-void
.end method

.method private setChoosenAlbum(Landroid/content/Intent;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 219
    const-string v2, "album-path"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, albumPath:Ljava/lang/String;
    const-string v2, "WidgetConfigure"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setChoosenAlbum: album path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v1, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 223
    .local v1, helper:Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;
    :try_start_0
    iget v2, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->setWidget(IILjava/lang/String;)Z

    .line 225
    iget v2, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->getEntry(I)Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/gallery3d/gadget/WidgetConfigure;->updateWidgetAndFinish(Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 229
    return-void

    .line 227
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    throw v2
.end method

.method private setChoosenPhoto(Landroid/content/Intent;)V
    .locals 11
    .parameter "data"

    .prologue
    const/4 v10, 0x1

    .line 192
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 194
    .local v2, res:Landroid/content/res/Resources;
    const v7, 0x7f0a0056

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 195
    .local v6, width:F
    const v7, 0x7f0a0057

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 199
    .local v0, height:F
    sget v7, Lcom/android/gallery3d/gadget/WidgetConfigure;->WIDGET_SCALE_FACTOR:F

    sget v8, Lcom/android/gallery3d/gadget/WidgetConfigure;->MAX_WIDGET_SIDE:I

    int-to-float v8, v8

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v9

    div-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 202
    .local v3, scale:F
    mul-float v7, v6, v3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 203
    .local v5, widgetWidth:I
    mul-float v7, v0, v3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 205
    .local v4, widgetHeight:I
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mPickedItem:Landroid/net/Uri;

    .line 206
    const-string v7, "WidgetConfigure"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setChoosenPhoto: photo uri="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mPickedItem:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.camera.action.CROP"

    iget-object v9, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mPickedItem:Landroid/net/Uri;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v8, "outputX"

    invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "outputY"

    invoke-virtual {v7, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "aspectX"

    invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "aspectY"

    invoke-virtual {v7, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "scaleUpIfNeeded"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "scale"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "return-data"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 215
    .local v1, request:Landroid/content/Intent;
    const/4 v7, 0x3

    invoke-virtual {p0, v1, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 216
    return-void
.end method

.method private setDrmFlLevel(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 272
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    const-string v0, "android.intent.extra.drm_level"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private setPhotoWidget(Landroid/content/Intent;)V
    .locals 8
    .parameter "data"

    .prologue
    .line 147
    const-string v5, "data"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 148
    .local v1, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 153
    .local v2, helper:Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;
    :try_start_0
    iget-object v5, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mPickedItem:Landroid/net/Uri;

    if-nez v5, :cond_0

    .line 159
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/gadget/WidgetConfigure;->getAbsloutePathBaseOfUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, absolutePath:Ljava/lang/String;
    if-eqz v0, :cond_1

    sget-object v5, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->EXTERNAL_SDCARD_PATH:Ljava/lang/String;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->EXTERNAL_SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 163
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mPickedItem:Landroid/net/Uri;

    .line 164
    const-string v5, "WidgetConfigure"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "use absloute path as uri for external sdcard="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mPickedItem:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v0           #absolutePath:Ljava/lang/String;
    :cond_0
    :goto_0
    iget v5, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    iget-object v6, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mPickedItem:Landroid/net/Uri;

    invoke-virtual {v2, v5, v6, v1}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->setPhoto(ILandroid/net/Uri;Landroid/graphics/Bitmap;)Z

    move-result v3

    .line 170
    .local v3, setPhotoSucceeded:Z
    if-nez v3, :cond_2

    .line 171
    const-string v5, "WidgetConfigure"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPhoto for widget #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " uri["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mPickedItem:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] failed!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/util/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const v5, 0x7f0c01a4

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 173
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setResult(I)V

    .line 174
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 189
    :goto_1
    return-void

    .line 166
    .end local v3           #setPhotoSucceeded:Z
    .restart local v0       #absolutePath:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mPickedItem:Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 187
    .end local v0           #absolutePath:Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    throw v5

    .line 177
    .restart local v3       #setPhotoSucceeded:Z
    :cond_2
    :try_start_2
    iget v5, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->getEntry(I)Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;

    move-result-object v4

    .line 178
    .local v4, widgetEntry:Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;
    if-eqz v4, :cond_3

    .line 179
    invoke-direct {p0, v4}, Lcom/android/gallery3d/gadget/WidgetConfigure;->updateWidgetAndFinish(Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    :goto_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    goto :goto_1

    .line 181
    :cond_3
    :try_start_3
    const-string v5, "WidgetConfigure"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getEntry("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") failed!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/util/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const v5, 0x7f0c01a4

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 183
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setResult(I)V

    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method private setWidgetType(Landroid/content/Intent;)V
    .locals 7
    .parameter "data"

    .prologue
    const v6, 0x7f0b0019

    const/4 v5, 0x1

    .line 232
    const-string v3, "widget-type"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mWidgetType:I

    .line 233
    iget v3, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mWidgetType:I

    const v4, 0x7f0b0017

    if-ne v3, v4, :cond_1

    .line 234
    const-string v3, "WidgetConfigure"

    const-string v4, "setWidgetType: type=album"

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/gallery3d/app/AlbumPicker;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    .local v1, intent:Landroid/content/Intent;
    invoke-direct {p0, v1}, Lcom/android/gallery3d/gadget/WidgetConfigure;->setDrmFlLevel(Landroid/content/Intent;)V

    .line 240
    const/4 v3, 0x2

    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 269
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget v3, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mWidgetType:I

    if-ne v3, v6, :cond_2

    .line 242
    const-string v3, "WidgetConfigure"

    const-string v4, "setWidgetType: type=shuffle"

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v0, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 245
    .local v0, helper:Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;
    :try_start_0
    iget v3, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->setWidget(IILjava/lang/String;)Z

    .line 246
    iget v3, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->getEntry(I)Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/gallery3d/gadget/WidgetConfigure;->updateWidgetAndFinish(Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    throw v3

    .line 251
    .end local v0           #helper:Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;
    :cond_2
    const-string v3, "WidgetConfigure"

    const-string v4, "setWidgetType: type=photo"

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-direct {p0}, Lcom/android/gallery3d/gadget/WidgetConfigure;->startMtkCropFlow()Z

    move-result v3

    if-nez v3, :cond_0

    .line 256
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/gallery3d/app/DialogPicker;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "image/*"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 261
    .local v2, request:Landroid/content/Intent;
    invoke-direct {p0, v2}, Lcom/android/gallery3d/gadget/WidgetConfigure;->setDrmFlLevel(Landroid/content/Intent;)V

    .line 263
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 264
    const-string v3, "attachWithoutConversion"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 267
    :cond_3
    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private startMtkCropFlow()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 286
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/android/gallery3d/app/DialogPicker;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "android.intent.action.GET_CONTENT"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "image/*"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 291
    .local v1, request:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 293
    .local v2, res:Landroid/content/res/Resources;
    const v7, 0x7f0a0056

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 294
    .local v6, width:F
    const v7, 0x7f0a0057

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 298
    .local v0, height:F
    sget v7, Lcom/android/gallery3d/gadget/WidgetConfigure;->WIDGET_SCALE_FACTOR:F

    sget v8, Lcom/android/gallery3d/gadget/WidgetConfigure;->MAX_WIDGET_SIDE:I

    int-to-float v8, v8

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v9

    div-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 301
    .local v3, scale:F
    mul-float v7, v6, v3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 302
    .local v5, widgetWidth:I
    mul-float v7, v0, v3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 304
    .local v4, widgetHeight:I
    const-string v7, "outputX"

    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "outputY"

    invoke-virtual {v7, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "aspectX"

    invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "aspectY"

    invoke-virtual {v7, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "scaleUpIfNeeded"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "scale"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "return-data"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 311
    const-string v7, "crop"

    const-string v8, "crop"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    invoke-direct {p0, v1}, Lcom/android/gallery3d/gadget/WidgetConfigure;->setDrmFlLevel(Landroid/content/Intent;)V

    .line 316
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 317
    const-string v7, "attachWithoutConversion"

    invoke-virtual {v1, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 320
    :cond_0
    const/4 v7, 0x3

    invoke-virtual {p0, v1, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 321
    return v10
.end method

.method private updateWidgetAndFinish(Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;)V
    .locals 6
    .parameter "entry"

    .prologue
    .line 86
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 87
    .local v0, manager:Landroid/appwidget/AppWidgetManager;
    iget v2, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-static {p0, v2, p1}, Lcom/android/gallery3d/gadget/PhotoAppWidgetProvider;->buildWidget(Landroid/content/Context;ILcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 88
    .local v1, views:Landroid/widget/RemoteViews;
    iget v2, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 89
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "appWidgetId"

    iget v5, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 92
    return-void
.end method


# virtual methods
.method public getAbsloutePathBaseOfUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "imageUri"

    .prologue
    .line 120
    const-string v0, "WidgetConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Single Photo mode :imageUri==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v6, 0x0

    .line 122
    .local v6, absloutePath:Ljava/lang/String;
    const/4 v7, 0x0

    .line 124
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 130
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 132
    const-string v0, "WidgetConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getAbsloutePathBaseOfUri]get absolute path ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_0
    if-eqz v7, :cond_1

    .line 138
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_1
    :goto_0
    return-object v6

    .line 134
    :catch_0
    move-exception v8

    .line 135
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "WidgetConfigure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [getAbsloutePathBaseOfUri] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    if-eqz v7, :cond_1

    .line 138
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 137
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 138
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 96
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 114
    :goto_0
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 104
    invoke-direct {p0, p3}, Lcom/android/gallery3d/gadget/WidgetConfigure;->setWidgetType(Landroid/content/Intent;)V

    goto :goto_0

    .line 105
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 106
    invoke-direct {p0, p3}, Lcom/android/gallery3d/gadget/WidgetConfigure;->setChoosenAlbum(Landroid/content/Intent;)V

    goto :goto_0

    .line 107
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 108
    invoke-direct {p0, p3}, Lcom/android/gallery3d/gadget/WidgetConfigure;->setChoosenPhoto(Landroid/content/Intent;)V

    goto :goto_0

    .line 109
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 110
    invoke-direct {p0, p3}, Lcom/android/gallery3d/gadget/WidgetConfigure;->setPhotoWidget(Landroid/content/Intent;)V

    goto :goto_0

    .line 112
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    const/4 v3, -0x1

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    .line 71
    iget v1, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    if-ne v1, v3, :cond_1

    .line 72
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const-string v1, "WidgetConfigure"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate, widget id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget v1, p0, Lcom/android/gallery3d/gadget/WidgetConfigure;->mWidgetType:I

    if-nez v1, :cond_0

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/gallery3d/gadget/WidgetTypeChooser;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
