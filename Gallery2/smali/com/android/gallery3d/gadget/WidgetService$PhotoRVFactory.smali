.class Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;
.super Ljava/lang/Object;
.source "WidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;
.implements Lcom/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/gadget/WidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhotoRVFactory"
.end annotation


# instance fields
.field private final mAlbumPath:Ljava/lang/String;

.field private final mApp:Lcom/android/gallery3d/app/GalleryApp;

.field private final mAppWidgetId:I

.field private mSource:Lcom/android/gallery3d/gadget/WidgetSource;

.field private final mType:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;IILjava/lang/String;)V
    .locals 0
    .parameter "app"
    .parameter "id"
    .parameter "type"
    .parameter "albumPath"

    .prologue
    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/android/gallery3d/app/GalleryApp;

    .line 95
    iput p2, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mAppWidgetId:I

    .line 96
    iput p3, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mType:I

    .line 97
    iput-object p4, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mAlbumPath:Ljava/lang/String;

    .line 98
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 133
    const-string v0, "GalleryAppWidgetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    invoke-interface {v2}, Lcom/android/gallery3d/gadget/WidgetSource;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    invoke-interface {v0}, Lcom/android/gallery3d/gadget/WidgetSource;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 138
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 150
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040002

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 153
    .local v0, rv:Landroid/widget/RemoteViews;
    const v1, 0x7f0b0006

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 154
    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 8
    .parameter "position"

    .prologue
    const v7, 0x7f0b0008

    .line 158
    const-string v4, "GalleryAppWidgetService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">> getViewAt: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 162
    .local v2, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    invoke-interface {v4, p1}, Lcom/android/gallery3d/gadget/WidgetSource;->getContentUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 163
    iget-object v4, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    invoke-interface {v4, p1}, Lcom/android/gallery3d/gadget/WidgetSource;->getImage(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 170
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v3

    .line 184
    :goto_0
    return-object v3

    .line 164
    :catch_0
    move-exception v1

    .line 167
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "GalleryAppWidgetService"

    const-string v5, "getViewAt: exception when fetching uri/bitmap: "

    invoke-static {v4, v5, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v3

    goto :goto_0

    .line 172
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_0
    const-string v4, "GalleryAppWidgetService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getViewAt("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bitmap="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v4, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v0}, Lcom/mediatek/gallery3d/util/MediatekFeature;->drawWidgetImageTypeOverlay(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 177
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f040004

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 180
    .local v3, views:Landroid/widget/RemoteViews;
    invoke-virtual {v3, v7, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 181
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/high16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 3

    .prologue
    .line 195
    const-string v0, "GalleryAppWidgetService"

    const-string v1, "onContentDirty"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mAppWidgetId:I

    const v2, 0x7f0b0009

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 199
    return-void
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 102
    const-string v3, "GalleryAppWidgetService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate, widget type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget v3, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 104
    iget-object v3, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mAlbumPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 106
    .local v2, path:Lcom/android/gallery3d/data/Path;
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isMpoSupported()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    :cond_0
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getPhotoWidgetInclusion()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/Path;->setMtkInclusion(I)V

    .line 111
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    .line 112
    .local v0, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual {v0, v2}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaSet;

    .line 113
    .local v1, mediaSet:Lcom/android/gallery3d/data/MediaSet;
    if-nez v1, :cond_2

    new-instance v3, Lcom/android/gallery3d/gadget/WidgetService$EmptySource;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/gallery3d/gadget/WidgetService$EmptySource;-><init>(Lcom/android/gallery3d/gadget/WidgetService$1;)V

    :goto_0
    iput-object v3, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    .line 119
    .end local v0           #manager:Lcom/android/gallery3d/data/DataManager;
    .end local v1           #mediaSet:Lcom/android/gallery3d/data/MediaSet;
    .end local v2           #path:Lcom/android/gallery3d/data/Path;
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    invoke-interface {v3, p0}, Lcom/android/gallery3d/gadget/WidgetSource;->setContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 120
    iget-object v3, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mAppWidgetId:I

    const v5, 0x7f0b0009

    invoke-virtual {v3, v4, v5}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 123
    return-void

    .line 113
    .restart local v0       #manager:Lcom/android/gallery3d/data/DataManager;
    .restart local v1       #mediaSet:Lcom/android/gallery3d/data/MediaSet;
    .restart local v2       #path:Lcom/android/gallery3d/data/Path;
    :cond_2
    new-instance v3, Lcom/android/gallery3d/gadget/MediaSetSource;

    invoke-direct {v3, v1}, Lcom/android/gallery3d/gadget/MediaSetSource;-><init>(Lcom/android/gallery3d/data/MediaSet;)V

    goto :goto_0

    .line 117
    .end local v0           #manager:Lcom/android/gallery3d/data/DataManager;
    .end local v1           #mediaSet:Lcom/android/gallery3d/data/MediaSet;
    .end local v2           #path:Lcom/android/gallery3d/data/Path;
    :cond_3
    new-instance v3, Lcom/android/gallery3d/gadget/LocalPhotoSource;

    iget-object v4, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/gallery3d/gadget/LocalPhotoSource;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    goto :goto_1
.end method

.method public onDataSetChanged()V
    .locals 2

    .prologue
    .line 189
    const-string v0, "GalleryAppWidgetService"

    const-string v1, "onDataSetChanged"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    invoke-interface {v0}, Lcom/android/gallery3d/gadget/WidgetSource;->reload()V

    .line 191
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 127
    const-string v0, "GalleryAppWidgetService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    invoke-interface {v0}, Lcom/android/gallery3d/gadget/WidgetSource;->close()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    .line 130
    return-void
.end method
