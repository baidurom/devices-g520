.class public Lcom/mediatek/gallery3d/video/ExtensionHelper;
.super Ljava/lang/Object;
.source "ExtensionHelper.java"


# static fields
.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "ExtensionHelper"

.field private static sMovieDrmExtension:Lcom/mediatek/gallery3d/ext/IMovieDrmExtension;

.field private static sMovieExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/gallery3d/ext/IMovieExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureMovieExtension(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 27
    sget-object v7, Lcom/mediatek/gallery3d/video/ExtensionHelper;->sMovieExtensions:Ljava/util/List;

    if-nez v7, :cond_2

    .line 28
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sput-object v7, Lcom/mediatek/gallery3d/video/ExtensionHelper;->sMovieExtensions:Ljava/util/List;

    .line 29
    const/4 v3, 0x0

    .line 30
    .local v3, find:Z
    const-class v7, Lcom/mediatek/gallery3d/ext/IMovieExtension;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Landroid/content/pm/Signature;

    invoke-static {p0, v7, v8}, Lcom/mediatek/pluginmanager/PluginManager;->create(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Lcom/mediatek/pluginmanager/PluginManager;

    move-result-object v6

    .line 32
    .local v6, pm:Lcom/mediatek/pluginmanager/PluginManager;,"Lcom/mediatek/pluginmanager/PluginManager<Lcom/mediatek/gallery3d/ext/IMovieExtension;>;"
    const/4 v4, 0x0

    .local v4, i:I
    invoke-virtual {v6}, Lcom/mediatek/pluginmanager/PluginManager;->getPluginCount()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 33
    invoke-virtual {v6, v4}, Lcom/mediatek/pluginmanager/PluginManager;->getPlugin(I)Lcom/mediatek/pluginmanager/Plugin;

    move-result-object v5

    .line 35
    .local v5, plugin:Lcom/mediatek/pluginmanager/Plugin;,"Lcom/mediatek/pluginmanager/Plugin<Lcom/mediatek/gallery3d/ext/IMovieExtension;>;"
    :try_start_0
    invoke-virtual {v5}, Lcom/mediatek/pluginmanager/Plugin;->createObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gallery3d/ext/IMovieExtension;

    .line 36
    .local v2, ext:Lcom/mediatek/gallery3d/ext/IMovieExtension;
    if-eqz v2, :cond_0

    .line 38
    const-string v7, "ExtensionHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ensureMovieExtension() plugin["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    sget-object v7, Lcom/mediatek/gallery3d/video/ExtensionHelper;->sMovieExtensions:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    const/4 v3, 0x1

    .line 32
    .end local v2           #ext:Lcom/mediatek/gallery3d/ext/IMovieExtension;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 43
    :catch_0
    move-exception v1

    .line 45
    .local v1, e1:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    const-string v7, "ExtensionHelper"

    const-string v8, "Cannot create plugin object."

    invoke-static {v7, v8, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 48
    .end local v1           #e1:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    .end local v5           #plugin:Lcom/mediatek/pluginmanager/Plugin;,"Lcom/mediatek/pluginmanager/Plugin<Lcom/mediatek/gallery3d/ext/IMovieExtension;>;"
    :cond_1
    if-nez v3, :cond_2

    .line 49
    sget-object v7, Lcom/mediatek/gallery3d/video/ExtensionHelper;->sMovieExtensions:Ljava/util/List;

    new-instance v8, Lcom/mediatek/gallery3d/ext/MovieExtension;

    invoke-direct {v8}, Lcom/mediatek/gallery3d/ext/MovieExtension;-><init>()V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .end local v0           #count:I
    .end local v3           #find:Z
    .end local v4           #i:I
    .end local v6           #pm:Lcom/mediatek/pluginmanager/PluginManager;,"Lcom/mediatek/pluginmanager/PluginManager<Lcom/mediatek/gallery3d/ext/IMovieExtension;>;"
    :cond_2
    return-void
.end method

.method public static getHooker(Landroid/content/Context;)Lcom/mediatek/gallery3d/ext/IActivityHooker;
    .locals 12
    .parameter "context"

    .prologue
    .line 55
    invoke-static {p0}, Lcom/mediatek/gallery3d/video/ExtensionHelper;->ensureMovieExtension(Landroid/content/Context;)V

    .line 56
    new-instance v3, Lcom/mediatek/gallery3d/ext/ActivityHookerGroup;

    invoke-direct {v3}, Lcom/mediatek/gallery3d/ext/ActivityHookerGroup;-><init>()V

    .line 57
    .local v3, group:Lcom/mediatek/gallery3d/ext/ActivityHookerGroup;
    invoke-static {p0}, Lcom/mediatek/gallery3d/video/ExtensionHelper;->getMovieStrategy(Landroid/content/Context;)Lcom/mediatek/gallery3d/ext/IMovieStrategy;

    move-result-object v9

    invoke-interface {v9}, Lcom/mediatek/gallery3d/ext/IMovieStrategy;->shouldEnableRewindAndForward()Z

    move-result v9

    if-nez v9, :cond_0

    .line 58
    new-instance v9, Lcom/mediatek/gallery3d/video/StopVideoHooker;

    invoke-direct {v9}, Lcom/mediatek/gallery3d/video/StopVideoHooker;-><init>()V

    invoke-virtual {v3, v9}, Lcom/mediatek/gallery3d/ext/ActivityHookerGroup;->addHooker(Lcom/mediatek/gallery3d/ext/IActivityHooker;)Z

    .line 60
    :cond_0
    new-instance v9, Lcom/mediatek/gallery3d/video/LoopVideoHooker;

    invoke-direct {v9}, Lcom/mediatek/gallery3d/video/LoopVideoHooker;-><init>()V

    invoke-virtual {v3, v9}, Lcom/mediatek/gallery3d/ext/ActivityHookerGroup;->addHooker(Lcom/mediatek/gallery3d/ext/IActivityHooker;)Z

    .line 64
    sget-object v9, Lcom/mediatek/gallery3d/video/ExtensionHelper;->sMovieExtensions:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/gallery3d/ext/IMovieExtension;

    .line 65
    .local v1, ext:Lcom/mediatek/gallery3d/ext/IMovieExtension;
    invoke-interface {v1}, Lcom/mediatek/gallery3d/ext/IMovieExtension;->getFeatureList()Ljava/util/List;

    move-result-object v7

    .line 66
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v7, :cond_1

    .line 67
    const/4 v5, 0x0

    .local v5, i:I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .local v8, size:I
    :goto_0
    if-ge v5, v8, :cond_1

    .line 68
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 69
    .local v2, feature:I
    packed-switch v2, :pswitch_data_0

    .line 67
    :goto_1
    :pswitch_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 74
    :pswitch_1
    new-instance v9, Lcom/mediatek/gallery3d/video/NotificationPlusHooker;

    invoke-direct {v9}, Lcom/mediatek/gallery3d/video/NotificationPlusHooker;-><init>()V

    invoke-virtual {v3, v9}, Lcom/mediatek/gallery3d/ext/ActivityHookerGroup;->addHooker(Lcom/mediatek/gallery3d/ext/IActivityHooker;)Z

    goto :goto_1

    .line 77
    :pswitch_2
    new-instance v9, Lcom/mediatek/gallery3d/video/StreamingHooker;

    invoke-direct {v9}, Lcom/mediatek/gallery3d/video/StreamingHooker;-><init>()V

    invoke-virtual {v3, v9}, Lcom/mediatek/gallery3d/ext/ActivityHookerGroup;->addHooker(Lcom/mediatek/gallery3d/ext/IActivityHooker;)Z

    goto :goto_1

    .line 80
    :pswitch_3
    new-instance v9, Lcom/mediatek/gallery3d/video/BookmarkHooker;

    invoke-direct {v9}, Lcom/mediatek/gallery3d/video/BookmarkHooker;-><init>()V

    invoke-virtual {v3, v9}, Lcom/mediatek/gallery3d/ext/ActivityHookerGroup;->addHooker(Lcom/mediatek/gallery3d/ext/IActivityHooker;)Z

    goto :goto_1

    .line 83
    :pswitch_4
    new-instance v9, Lcom/mediatek/gallery3d/video/MovieListHooker;

    invoke-direct {v9}, Lcom/mediatek/gallery3d/video/MovieListHooker;-><init>()V

    invoke-virtual {v3, v9}, Lcom/mediatek/gallery3d/ext/ActivityHookerGroup;->addHooker(Lcom/mediatek/gallery3d/ext/IActivityHooker;)Z

    goto :goto_1

    .line 86
    :pswitch_5
    new-instance v9, Lcom/mediatek/gallery3d/video/StereoAudioHooker;

    invoke-direct {v9}, Lcom/mediatek/gallery3d/video/StereoAudioHooker;-><init>()V

    invoke-virtual {v3, v9}, Lcom/mediatek/gallery3d/ext/ActivityHookerGroup;->addHooker(Lcom/mediatek/gallery3d/ext/IActivityHooker;)Z

    goto :goto_1

    .line 89
    :pswitch_6
    new-instance v9, Lcom/mediatek/gallery3d/video/StepOptionSettingsHooker;

    invoke-direct {v9}, Lcom/mediatek/gallery3d/video/StepOptionSettingsHooker;-><init>()V

    invoke-virtual {v3, v9}, Lcom/mediatek/gallery3d/ext/ActivityHookerGroup;->addHooker(Lcom/mediatek/gallery3d/ext/IActivityHooker;)Z

    goto :goto_1

    .line 97
    .end local v1           #ext:Lcom/mediatek/gallery3d/ext/IMovieExtension;
    .end local v2           #feature:I
    .end local v5           #i:I
    .end local v7           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8           #size:I
    :cond_2
    sget-object v9, Lcom/mediatek/gallery3d/video/ExtensionHelper;->sMovieExtensions:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/gallery3d/ext/IMovieExtension;

    .line 98
    .restart local v1       #ext:Lcom/mediatek/gallery3d/ext/IMovieExtension;
    invoke-interface {v1}, Lcom/mediatek/gallery3d/ext/IMovieExtension;->getHooker()Lcom/mediatek/gallery3d/ext/IActivityHooker;

    move-result-object v4

    .line 99
    .local v4, hooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;
    if-eqz v4, :cond_3

    .line 100
    invoke-virtual {v3, v4}, Lcom/mediatek/gallery3d/ext/ActivityHookerGroup;->addHooker(Lcom/mediatek/gallery3d/ext/IActivityHooker;)Z

    goto :goto_2

    .line 103
    .end local v1           #ext:Lcom/mediatek/gallery3d/ext/IMovieExtension;
    .end local v4           #hooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;
    :cond_4
    const/4 v5, 0x0

    .restart local v5       #i:I
    invoke-virtual {v3}, Lcom/mediatek/gallery3d/ext/ActivityHookerGroup;->size()I

    move-result v0

    .local v0, count:I
    :goto_3
    if-ge v5, v0, :cond_5

    .line 105
    const-string v9, "ExtensionHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getHooker() ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3, v5}, Lcom/mediatek/gallery3d/ext/ActivityHookerGroup;->getHooker(I)Lcom/mediatek/gallery3d/ext/IActivityHooker;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 108
    :cond_5
    return-object v3

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static getMovieDrmExtension(Landroid/content/Context;)Lcom/mediatek/gallery3d/ext/IMovieDrmExtension;
    .locals 1
    .parameter "context"

    .prologue
    .line 124
    sget-object v0, Lcom/mediatek/gallery3d/video/ExtensionHelper;->sMovieDrmExtension:Lcom/mediatek/gallery3d/ext/IMovieDrmExtension;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl;

    invoke-direct {v0}, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl;-><init>()V

    sput-object v0, Lcom/mediatek/gallery3d/video/ExtensionHelper;->sMovieDrmExtension:Lcom/mediatek/gallery3d/ext/IMovieDrmExtension;

    .line 138
    :cond_0
    sget-object v0, Lcom/mediatek/gallery3d/video/ExtensionHelper;->sMovieDrmExtension:Lcom/mediatek/gallery3d/ext/IMovieDrmExtension;

    return-object v0
.end method

.method public static getMovieStrategy(Landroid/content/Context;)Lcom/mediatek/gallery3d/ext/IMovieStrategy;
    .locals 4
    .parameter "context"

    .prologue
    .line 112
    invoke-static {p0}, Lcom/mediatek/gallery3d/video/ExtensionHelper;->ensureMovieExtension(Landroid/content/Context;)V

    .line 113
    sget-object v3, Lcom/mediatek/gallery3d/video/ExtensionHelper;->sMovieExtensions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/ext/IMovieExtension;

    .line 114
    .local v0, ext:Lcom/mediatek/gallery3d/ext/IMovieExtension;
    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IMovieExtension;->getMovieStrategy()Lcom/mediatek/gallery3d/ext/IMovieStrategy;

    move-result-object v2

    .line 115
    .local v2, strategy:Lcom/mediatek/gallery3d/ext/IMovieStrategy;
    if-eqz v2, :cond_0

    .line 119
    .end local v0           #ext:Lcom/mediatek/gallery3d/ext/IMovieExtension;
    .end local v2           #strategy:Lcom/mediatek/gallery3d/ext/IMovieStrategy;
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lcom/mediatek/gallery3d/ext/MovieStrategy;

    invoke-direct {v2}, Lcom/mediatek/gallery3d/ext/MovieStrategy;-><init>()V

    goto :goto_0
.end method
