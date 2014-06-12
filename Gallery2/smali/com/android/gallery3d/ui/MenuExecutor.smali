.class public Lcom/android/gallery3d/ui/MenuExecutor;
.super Ljava/lang/Object;
.source "MenuExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;,
        Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;,
        Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    }
.end annotation


# static fields
.field public static final EXECUTION_RESULT_CANCEL:I = 0x3

.field public static final EXECUTION_RESULT_FAIL:I = 0x2

.field public static final EXECUTION_RESULT_SUCCESS:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final IS_DISPLAY_2D_AS_3D_SUPPORTED:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_STEREO_DISPLAY_SUPPORTED:Z = false

.field private static final MSG_DO_SHARE:I = 0x3

.field private static final MSG_TASK_COMPLETE:I = 0x1

.field private static final MSG_TASK_UPDATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MenuExecutor"


# instance fields
.field private final mActivity:Lcom/android/gallery3d/app/GalleryActivity;

.field private mDialog:Landroid/app/ProgressDialog;

.field private final mHandler:Landroid/os/Handler;

.field private final mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mWaitOnStop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/ui/MenuExecutor;->IS_STEREO_DISPLAY_SUPPORTED:Z

    .line 71
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDisplay2dAs3dSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/ui/MenuExecutor;->IS_DISPLAY_2D_AS_3D_SUPPORTED:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V
    .locals 2
    .parameter "activity"
    .parameter "selectionManager"

    .prologue
    .line 106
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryActivity;

    iput-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    .line 108
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/SelectionManager;

    iput-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 109
    new-instance v0, Lcom/android/gallery3d/ui/MenuExecutor$1;

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/MenuExecutor$1;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/MenuExecutor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/ui/SelectionManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/app/GalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/android/gallery3d/data/Path;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/ui/MenuExecutor;->execute(Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/android/gallery3d/data/Path;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->onProgressUpdate(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->onProgressComplete(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/MenuExecutor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->startCropIntent()V

    return-void
.end method

.method private appendMessageForSingleId(Landroid/app/ProgressDialog;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "dialog"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ProgressDialog;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 731
    .local p2, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 732
    const/4 v0, 0x0

    .line 733
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v1

    .line 734
    .local v1, obj:Lcom/android/gallery3d/data/MediaObject;
    if-nez v1, :cond_1

    .line 746
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #obj:Lcom/android/gallery3d/data/MediaObject;
    :cond_0
    :goto_0
    return-void

    .line 737
    .restart local v0       #message:Ljava/lang/String;
    .restart local v1       #obj:Lcom/android/gallery3d/data/MediaObject;
    :cond_1
    instance-of v2, v1, Lcom/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_3

    .line 738
    check-cast v1, Lcom/android/gallery3d/data/MediaItem;

    .end local v1           #obj:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v0

    .line 742
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 743
    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 739
    .restart local v1       #obj:Lcom/android/gallery3d/data/MediaObject;
    :cond_3
    instance-of v2, v1, Lcom/android/gallery3d/data/MediaSet;

    if-eqz v2, :cond_2

    .line 740
    check-cast v1, Lcom/android/gallery3d/data/MediaSet;

    .end local v1           #obj:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private clickStereoPhoto(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;Ljava/lang/String;)V
    .locals 8
    .parameter "action"
    .parameter "listener"
    .parameter "message"

    .prologue
    .line 628
    const v5, 0x7f0c0090

    .line 629
    .local v5, menuTitle:I
    move-object v4, p2

    .line 630
    .local v4, menuListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    move v3, p1

    .line 632
    .local v3, menuAction:I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v6, Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 634
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v1, Lcom/android/gallery3d/ui/MenuExecutor$2;

    invoke-direct {v1, p0, v3, v4}, Lcom/android/gallery3d/ui/MenuExecutor$2;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 649
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    const v6, 0x104000a

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 650
    const/high16 v6, 0x104

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 651
    const v6, 0x7f0c0090

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 653
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 654
    .local v2, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 655
    return-void
.end method

.method private static createProgressDialog(Landroid/content/Context;II)Landroid/app/ProgressDialog;
    .locals 4
    .parameter "context"
    .parameter "titleId"
    .parameter "progressMax"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 86
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f0c0090

    if-eq v1, p1, :cond_0

    .line 87
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 89
    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 90
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 91
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 92
    if-le p2, v3, :cond_1

    .line 93
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 95
    :cond_1
    return-object v0
.end method

.method private execute(Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/android/gallery3d/data/Path;)Z
    .locals 32
    .parameter "manager"
    .parameter "jc"
    .parameter "cmd"
    .parameter "path"

    .prologue
    .line 446
    const/16 v23, 0x1

    .line 447
    .local v23, result:Z
    const-string v27, "MenuExecutor"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Execute cmd: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " for "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/gallery3d/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 450
    .local v24, startTime:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v4, Landroid/app/Activity;

    .line 452
    .local v4, activity:Landroid/app/Activity;
    sparse-switch p3, :sswitch_data_0

    .line 562
    new-instance v27, Ljava/lang/AssertionError;

    invoke-direct/range {v27 .. v27}, Ljava/lang/AssertionError;-><init>()V

    throw v27

    .line 454
    :sswitch_0
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->delete(Lcom/android/gallery3d/data/Path;)V

    .line 564
    :cond_0
    :goto_0
    const-string v27, "MenuExecutor"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "It takes "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    sub-long v29, v29, v24

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " ms to execute cmd for "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/gallery3d/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    return v23

    .line 457
    :sswitch_1
    const/16 v27, 0x5a

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/DataManager;->rotate(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_0

    .line 460
    :sswitch_2
    const/16 v27, -0x5a

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/DataManager;->rotate(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_0

    .line 463
    :sswitch_3
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v18

    .line 464
    .local v18, obj:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual/range {v18 .. v18}, Lcom/android/gallery3d/data/MediaObject;->getCacheFlag()I

    move-result v5

    .line 465
    .local v5, cacheFlag:I
    const/16 v27, 0x2

    move/from16 v0, v27

    if-ne v5, v0, :cond_1

    .line 466
    const/4 v5, 0x1

    .line 470
    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/gallery3d/data/MediaObject;->cache(I)V

    goto :goto_0

    .line 468
    :cond_1
    const/4 v5, 0x2

    goto :goto_1

    .line 474
    .end local v5           #cacheFlag:I
    .end local v18           #obj:Lcom/android/gallery3d/data/MediaObject;
    :sswitch_4
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v15

    check-cast v15, Lcom/android/gallery3d/data/MediaItem;

    .line 475
    .local v15, item:Lcom/android/gallery3d/data/MediaItem;
    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [D

    move-object/from16 v16, v0

    .line 476
    .local v16, latlng:[D
    invoke-virtual/range {v15 .. v16}, Lcom/android/gallery3d/data/MediaItem;->getLatLong([D)V

    .line 477
    const/16 v27, 0x0

    aget-wide v27, v16, v27

    const/16 v29, 0x1

    aget-wide v29, v16, v29

    invoke-static/range {v27 .. v30}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    move-object/from16 v27, v0

    check-cast v27, Landroid/content/Context;

    const/16 v28, 0x0

    aget-wide v28, v16, v28

    const/16 v30, 0x1

    aget-wide v30, v16, v30

    invoke-static/range {v27 .. v31}, Lcom/android/gallery3d/util/GalleryUtils;->showOnMap(Landroid/content/Context;DD)V

    goto/16 :goto_0

    .line 483
    .end local v15           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v16           #latlng:[D
    :sswitch_5
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v18

    .line 484
    .restart local v18       #obj:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual/range {v18 .. v18}, Lcom/android/gallery3d/data/MediaObject;->Import()Z

    move-result v23

    .line 485
    goto/16 :goto_0

    .line 488
    .end local v18           #obj:Lcom/android/gallery3d/data/MediaObject;
    :sswitch_6
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v7

    check-cast v7, Lcom/android/gallery3d/data/MediaItem;

    .line 490
    .local v7, cropItem:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v6

    .line 492
    .local v6, cropImageMimeType:Ljava/lang/String;
    :try_start_0
    new-instance v27, Landroid/content/Intent;

    const-string v28, "com.android.camera.action.CROP"

    invoke-direct/range {v27 .. v28}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    .line 494
    .local v14, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    move-object/from16 v27, v0

    check-cast v27, Landroid/app/Activity;

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 495
    .end local v14           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v8

    .line 496
    .local v8, e:Ljava/lang/UnsupportedOperationException;
    const-string v27, "MenuExecutor"

    const-string v28, "failed to start crop activity: "

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v8}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 497
    const v27, 0x7f0c0265

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v4, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 500
    .end local v8           #e:Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v9

    .line 501
    .local v9, e2:Landroid/content/ActivityNotFoundException;
    const-string v27, "MenuExecutor"

    const-string v28, "failed to start crop activity: "

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v9}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 502
    const v27, 0x7f0c0265

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v4, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 508
    .end local v6           #cropImageMimeType:Ljava/lang/String;
    .end local v7           #cropItem:Lcom/android/gallery3d/data/MediaItem;
    .end local v9           #e2:Landroid/content/ActivityNotFoundException;
    :sswitch_7
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v12

    check-cast v12, Lcom/android/gallery3d/data/MediaItem;

    .line 510
    .local v12, editItem:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v12}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v10

    .line 511
    .local v10, editImageMimeType:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v19

    .line 512
    .local v19, originUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    move-object/from16 v27, v0

    check-cast v27, Landroid/content/Context;

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2, v10}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->convertSingle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 514
    .local v11, editImageUri:Landroid/net/Uri;
    const-string v27, "MenuExecutor"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "execute:edit:got new uri:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :try_start_1
    new-instance v27, Landroid/content/Intent;

    const-string v28, "android.intent.action.EDIT"

    invoke-direct/range {v27 .. v28}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v28, "image/jpeg"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v11, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v27

    const-string v28, "UriForSaving"

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v27

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 523
    :catch_2
    move-exception v8

    .line 524
    .local v8, e:Landroid/content/ActivityNotFoundException;
    const-string v27, "MenuExecutor"

    const-string v28, "failed to start edit activity: "

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v8}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 525
    const v27, 0x7f0c0265

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v4, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 533
    .end local v8           #e:Landroid/content/ActivityNotFoundException;
    .end local v10           #editImageMimeType:Ljava/lang/String;
    .end local v11           #editImageUri:Landroid/net/Uri;
    .end local v12           #editItem:Lcom/android/gallery3d/data/MediaItem;
    .end local v19           #originUri:Landroid/net/Uri;
    :sswitch_8
    const-string v27, "MenuExecutor"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Print for "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/gallery3d/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaType(Lcom/android/gallery3d/data/Path;)I

    move-result v26

    .line 535
    .local v26, type:I
    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 538
    const-string v17, "image/*"

    .line 540
    .local v17, mimeType:Ljava/lang/String;
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 541
    .restart local v14       #intent:Landroid/content/Intent;
    const-string v27, "mediatek.intent.action.PRINT"

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    const-string v27, "android.intent.category.ALTERNATIVE"

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 543
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v22

    check-cast v22, Lcom/android/gallery3d/data/MediaItem;

    .line 547
    .local v22, printItem:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual/range {v22 .. v22}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v20

    .line 548
    .local v20, printImageMimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    move-object/from16 v27, v0

    check-cast v27, Landroid/content/Context;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->convertSingle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 550
    .local v21, printImageUri:Landroid/net/Uri;
    const-string v27, "MenuExecutor"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "execute:print:got new uri:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const-string v27, "android.intent.extra.STREAM"

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 554
    const v27, 0x7f0c015d

    :try_start_2
    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v14, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 556
    :catch_3
    move-exception v13

    .line 557
    .local v13, ex:Landroid/content/ActivityNotFoundException;
    const v27, 0x7f0c015c

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v4, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 452
    :sswitch_data_0
    .sparse-switch
        0x7f0b0003 -> :sswitch_3
        0x7f0b0102 -> :sswitch_5
        0x7f0b0103 -> :sswitch_0
        0x7f0b0104 -> :sswitch_7
        0x7f0b0105 -> :sswitch_8
        0x7f0b0106 -> :sswitch_2
        0x7f0b0107 -> :sswitch_1
        0x7f0b0108 -> :sswitch_6
        0x7f0b010c -> :sswitch_4
    .end sparse-switch
.end method

.method private getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .parameter "action"

    .prologue
    .line 221
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    .line 222
    .local v0, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->getSingleSelectedPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 223
    .local v2, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v0, v2}, Lcom/android/gallery3d/data/DataManager;->getMediaType(Lcom/android/gallery3d/data/Path;)I

    move-result v3

    invoke-static {v3}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, mimeType:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    return-object v3
.end method

.method public static getMimeType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 435
    packed-switch p0, :pswitch_data_0

    .line 440
    :pswitch_0
    const-string v0, "*/*"

    :goto_0
    return-object v0

    .line 437
    :pswitch_1
    const-string v0, "image/*"

    goto :goto_0

    .line 439
    :pswitch_2
    const-string v0, "video/*"

    goto :goto_0

    .line 435
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getSingleSelectedPath()Lcom/android/gallery3d/data/Path;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 215
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 216
    .local v0, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 217
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/Path;

    return-object v1

    :cond_0
    move v1, v2

    .line 216
    goto :goto_0
.end method

.method private onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 2
    .parameter "action"
    .parameter "listener"

    .prologue
    .line 228
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    .line 229
    return-void
.end method

.method private onProgressComplete(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 4
    .parameter "result"
    .parameter "listener"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 162
    return-void
.end method

.method private onProgressUpdate(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 4
    .parameter "index"
    .parameter "listener"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 158
    return-void
.end method

.method private static setMenuItemEnable(Landroid/view/Menu;IZ)V
    .locals 1
    .parameter "menu"
    .parameter "id"
    .parameter "enabled"

    .prologue
    .line 669
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 670
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 671
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 673
    :cond_0
    return-void
.end method

.method private static setMenuItemVisibility(Landroid/view/Menu;IZ)V
    .locals 1
    .parameter "menu"
    .parameter "id"
    .parameter "visibility"

    .prologue
    .line 166
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 167
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 168
    :cond_0
    return-void
.end method

.method private startCropIntent()V
    .locals 7

    .prologue
    .line 658
    iget-object v5, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    .line 659
    .local v1, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->getSingleSelectedPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    .line 660
    .local v4, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v1, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v3

    .line 661
    .local v3, obj:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v1, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaType(Lcom/android/gallery3d/data/Path;)I

    move-result v5

    invoke-static {v5}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v2

    .line 662
    .local v2, mimeType:Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.camera.action.CROP"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 664
    .local v0, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 665
    return-void
.end method

.method private stopTaskAndDismissDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_2

    .line 141
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mWaitOnStop:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 143
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 145
    iput-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    .line 147
    :cond_1
    iput-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    .line 149
    :cond_2
    return-void
.end method

.method public static updateMenuOperation(Landroid/view/Menu;I)V
    .locals 16
    .parameter "menu"
    .parameter "supported"

    .prologue
    .line 171
    and-int/lit8 v15, p1, 0x1

    if-eqz v15, :cond_0

    const/4 v3, 0x1

    .line 172
    .local v3, supportDelete:Z
    :goto_0
    and-int/lit8 v15, p1, 0x2

    if-eqz v15, :cond_1

    const/4 v10, 0x1

    .line 173
    .local v10, supportRotate:Z
    :goto_1
    and-int/lit8 v15, p1, 0x8

    if-eqz v15, :cond_2

    const/4 v2, 0x1

    .line 174
    .local v2, supportCrop:Z
    :goto_2
    and-int/lit8 v15, p1, 0x4

    if-eqz v15, :cond_3

    const/4 v12, 0x1

    .line 175
    .local v12, supportShare:Z
    :goto_3
    and-int/lit8 v15, p1, 0x20

    if-eqz v15, :cond_4

    const/4 v11, 0x1

    .line 176
    .local v11, supportSetAs:Z
    :goto_4
    and-int/lit8 v15, p1, 0x10

    if-eqz v15, :cond_5

    const/4 v13, 0x1

    .line 177
    .local v13, supportShowOnMap:Z
    :goto_5
    move/from16 v0, p1

    and-int/lit16 v15, v0, 0x100

    if-eqz v15, :cond_6

    const/4 v1, 0x1

    .line 178
    .local v1, supportCache:Z
    :goto_6
    move/from16 v0, p1

    and-int/lit16 v15, v0, 0x200

    if-eqz v15, :cond_7

    const/4 v5, 0x1

    .line 179
    .local v5, supportEdit:Z
    :goto_7
    move/from16 v0, p1

    and-int/lit16 v15, v0, 0x400

    if-eqz v15, :cond_8

    const/4 v7, 0x1

    .line 180
    .local v7, supportInfo:Z
    :goto_8
    move/from16 v0, p1

    and-int/lit16 v15, v0, 0x800

    if-eqz v15, :cond_9

    const/4 v6, 0x1

    .line 183
    .local v6, supportImport:Z
    :goto_9
    move/from16 v0, p1

    and-int/lit16 v15, v0, 0x4000

    if-eqz v15, :cond_a

    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isBluetoothPrintSupported()Z

    move-result v15

    if-eqz v15, :cond_a

    const/4 v9, 0x1

    .line 186
    .local v9, supportPrint:Z
    :goto_a
    const v15, 0x8000

    and-int v15, v15, p1

    if-eqz v15, :cond_b

    const/4 v4, 0x1

    .line 188
    .local v4, supportDrmInfo:Z
    :goto_b
    const/high16 v15, 0x1

    and-int v15, v15, p1

    if-eqz v15, :cond_c

    const/4 v14, 0x1

    .line 190
    .local v14, supportStereoMode:Z
    :goto_c
    const/high16 v15, 0x10

    and-int v15, v15, p1

    if-eqz v15, :cond_d

    const/4 v8, 0x1

    .line 192
    .local v8, supportPQTuning:Z
    :goto_d
    const v15, 0x7f0b0103

    move-object/from16 v0, p0

    invoke-static {v0, v15, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 193
    const v15, 0x7f0b0106

    move-object/from16 v0, p0

    invoke-static {v0, v15, v10}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 194
    const v15, 0x7f0b0107

    move-object/from16 v0, p0

    invoke-static {v0, v15, v10}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 195
    const v15, 0x7f0b0108

    move-object/from16 v0, p0

    invoke-static {v0, v15, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 196
    const v15, 0x7f0b0101

    move-object/from16 v0, p0

    invoke-static {v0, v15, v12}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 197
    const v15, 0x7f0b0109

    move-object/from16 v0, p0

    invoke-static {v0, v15, v11}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 198
    const v15, 0x7f0b010c

    move-object/from16 v0, p0

    invoke-static {v0, v15, v13}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 199
    const v15, 0x7f0b0104

    move-object/from16 v0, p0

    invoke-static {v0, v15, v5}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 200
    const v15, 0x7f0b010a

    move-object/from16 v0, p0

    invoke-static {v0, v15, v7}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 201
    const v15, 0x7f0b0102

    move-object/from16 v0, p0

    invoke-static {v0, v15, v6}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 204
    const v15, 0x7f0b010e

    move-object/from16 v0, p0

    invoke-static {v0, v15, v8}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 206
    const v15, 0x7f0b0105

    move-object/from16 v0, p0

    invoke-static {v0, v15, v9}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 208
    const v15, 0x7f0b010b

    move-object/from16 v0, p0

    invoke-static {v0, v15, v4}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 210
    const v15, 0x7f0b010d

    move-object/from16 v0, p0

    invoke-static {v0, v15, v14}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 211
    invoke-static/range {p0 .. p1}, Lcom/android/gallery3d/ui/MenuExecutor;->updateStereoMenu(Landroid/view/Menu;I)V

    .line 212
    return-void

    .line 171
    .end local v1           #supportCache:Z
    .end local v2           #supportCrop:Z
    .end local v3           #supportDelete:Z
    .end local v4           #supportDrmInfo:Z
    .end local v5           #supportEdit:Z
    .end local v6           #supportImport:Z
    .end local v7           #supportInfo:Z
    .end local v8           #supportPQTuning:Z
    .end local v9           #supportPrint:Z
    .end local v10           #supportRotate:Z
    .end local v11           #supportSetAs:Z
    .end local v12           #supportShare:Z
    .end local v13           #supportShowOnMap:Z
    .end local v14           #supportStereoMode:Z
    :cond_0
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 172
    .restart local v3       #supportDelete:Z
    :cond_1
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 173
    .restart local v10       #supportRotate:Z
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 174
    .restart local v2       #supportCrop:Z
    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 175
    .restart local v12       #supportShare:Z
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 176
    .restart local v11       #supportSetAs:Z
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 177
    .restart local v13       #supportShowOnMap:Z
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_6

    .line 178
    .restart local v1       #supportCache:Z
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 179
    .restart local v5       #supportEdit:Z
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_8

    .line 180
    .restart local v7       #supportInfo:Z
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_9

    .line 183
    .restart local v6       #supportImport:Z
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_a

    .line 186
    .restart local v9       #supportPrint:Z
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_b

    .line 188
    .restart local v4       #supportDrmInfo:Z
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_c

    .line 190
    .restart local v14       #supportStereoMode:Z
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_d
.end method

.method private static updateStereoMenu(Landroid/view/Menu;I)V
    .locals 2
    .parameter "menu"
    .parameter "supported"

    .prologue
    .line 609
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    const v1, 0x7f0b010d

    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 613
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 616
    const/high16 v1, 0x2

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    .line 617
    const v1, 0x7f0c0197

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 618
    const v1, 0x7f0200ce

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 619
    :cond_2
    const/high16 v1, 0x4

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 620
    const v1, 0x7f0c0198

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 621
    const v1, 0x7f0200cf

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public static updateSupportedMenuEnabled(Landroid/view/Menu;IZ)V
    .locals 13
    .parameter "menu"
    .parameter "supported"
    .parameter "enabled"

    .prologue
    .line 676
    and-int/lit8 v12, p1, 0x1

    if-eqz v12, :cond_b

    const/4 v2, 0x1

    .line 677
    .local v2, supportDelete:Z
    :goto_0
    and-int/lit8 v12, p1, 0x2

    if-eqz v12, :cond_c

    const/4 v8, 0x1

    .line 678
    .local v8, supportRotate:Z
    :goto_1
    and-int/lit8 v12, p1, 0x8

    if-eqz v12, :cond_d

    const/4 v1, 0x1

    .line 679
    .local v1, supportCrop:Z
    :goto_2
    and-int/lit8 v12, p1, 0x4

    if-eqz v12, :cond_e

    const/4 v10, 0x1

    .line 680
    .local v10, supportShare:Z
    :goto_3
    and-int/lit8 v12, p1, 0x20

    if-eqz v12, :cond_f

    const/4 v9, 0x1

    .line 681
    .local v9, supportSetAs:Z
    :goto_4
    and-int/lit8 v12, p1, 0x10

    if-eqz v12, :cond_10

    const/4 v11, 0x1

    .line 682
    .local v11, supportShowOnMap:Z
    :goto_5
    and-int/lit16 v12, p1, 0x100

    if-eqz v12, :cond_11

    const/4 v0, 0x1

    .line 683
    .local v0, supportCache:Z
    :goto_6
    and-int/lit16 v12, p1, 0x200

    if-eqz v12, :cond_12

    const/4 v4, 0x1

    .line 684
    .local v4, supportEdit:Z
    :goto_7
    and-int/lit16 v12, p1, 0x400

    if-eqz v12, :cond_13

    const/4 v6, 0x1

    .line 685
    .local v6, supportInfo:Z
    :goto_8
    and-int/lit16 v12, p1, 0x800

    if-eqz v12, :cond_14

    const/4 v5, 0x1

    .line 687
    .local v5, supportImport:Z
    :goto_9
    and-int/lit16 v12, p1, 0x4000

    if-eqz v12, :cond_15

    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isBluetoothPrintSupported()Z

    move-result v12

    if-eqz v12, :cond_15

    const/4 v7, 0x1

    .line 690
    .local v7, supportPrint:Z
    :goto_a
    const v12, 0x8000

    and-int/2addr v12, p1

    if-eqz v12, :cond_16

    const/4 v3, 0x1

    .line 692
    .local v3, supportDrmInfo:Z
    :goto_b
    if-eqz v2, :cond_0

    .line 693
    const v12, 0x7f0b0103

    invoke-static {p0, v12, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemEnable(Landroid/view/Menu;IZ)V

    .line 695
    :cond_0
    if-eqz v8, :cond_1

    .line 696
    const v12, 0x7f0b0106

    invoke-static {p0, v12, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemEnable(Landroid/view/Menu;IZ)V

    .line 697
    const v12, 0x7f0b0107

    invoke-static {p0, v12, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemEnable(Landroid/view/Menu;IZ)V

    .line 699
    :cond_1
    if-eqz v1, :cond_2

    .line 700
    const v12, 0x7f0b0108

    invoke-static {p0, v12, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemEnable(Landroid/view/Menu;IZ)V

    .line 702
    :cond_2
    if-eqz v10, :cond_3

    .line 703
    const v12, 0x7f0b0101

    invoke-static {p0, v12, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemEnable(Landroid/view/Menu;IZ)V

    .line 705
    :cond_3
    if-eqz v9, :cond_4

    .line 706
    const v12, 0x7f0b0109

    invoke-static {p0, v12, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemEnable(Landroid/view/Menu;IZ)V

    .line 708
    :cond_4
    if-eqz v11, :cond_5

    .line 709
    const v12, 0x7f0b010c

    invoke-static {p0, v12, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemEnable(Landroid/view/Menu;IZ)V

    .line 711
    :cond_5
    if-eqz v4, :cond_6

    .line 712
    const v12, 0x7f0b0104

    invoke-static {p0, v12, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemEnable(Landroid/view/Menu;IZ)V

    .line 714
    :cond_6
    if-eqz v6, :cond_7

    .line 715
    const v12, 0x7f0b010a

    invoke-static {p0, v12, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemEnable(Landroid/view/Menu;IZ)V

    .line 717
    :cond_7
    if-eqz v5, :cond_8

    .line 718
    const v12, 0x7f0b0102

    invoke-static {p0, v12, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemEnable(Landroid/view/Menu;IZ)V

    .line 721
    :cond_8
    if-eqz v7, :cond_9

    .line 722
    const v12, 0x7f0b0105

    invoke-static {p0, v12, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemEnable(Landroid/view/Menu;IZ)V

    .line 725
    :cond_9
    if-eqz v3, :cond_a

    .line 726
    const v12, 0x7f0b010b

    invoke-static {p0, v12, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemEnable(Landroid/view/Menu;IZ)V

    .line 728
    :cond_a
    return-void

    .line 676
    .end local v0           #supportCache:Z
    .end local v1           #supportCrop:Z
    .end local v2           #supportDelete:Z
    .end local v3           #supportDrmInfo:Z
    .end local v4           #supportEdit:Z
    .end local v5           #supportImport:Z
    .end local v6           #supportInfo:Z
    .end local v7           #supportPrint:Z
    .end local v8           #supportRotate:Z
    .end local v9           #supportSetAs:Z
    .end local v10           #supportShare:Z
    .end local v11           #supportShowOnMap:Z
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 677
    .restart local v2       #supportDelete:Z
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 678
    .restart local v8       #supportRotate:Z
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 679
    .restart local v1       #supportCrop:Z
    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 680
    .restart local v10       #supportShare:Z
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 681
    .restart local v9       #supportSetAs:Z
    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_5

    .line 682
    .restart local v11       #supportShowOnMap:Z
    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 683
    .restart local v0       #supportCache:Z
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 684
    .restart local v4       #supportEdit:Z
    :cond_13
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 685
    .restart local v6       #supportInfo:Z
    :cond_14
    const/4 v5, 0x0

    goto/16 :goto_9

    .line 687
    .restart local v5       #supportImport:Z
    :cond_15
    const/4 v7, 0x0

    goto/16 :goto_a

    .line 690
    .restart local v7       #supportPrint:Z
    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_b
.end method


# virtual methods
.method public onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V
    .locals 24
    .parameter "action"
    .parameter "listener"
    .parameter "waitOnStop"
    .parameter "showDialog"

    .prologue
    .line 234
    packed-switch p1, :pswitch_data_0

    .line 355
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 236
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectAllMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    goto :goto_0

    .line 239
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SelectionManager;->selectAll()V

    goto :goto_0

    .line 243
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v17

    .line 244
    .local v17, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/MenuExecutor;->getSingleSelectedPath()Lcom/android/gallery3d/data/Path;

    move-result-object v20

    .line 245
    .local v20, path:Lcom/android/gallery3d/data/Path;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v19

    .line 246
    .local v19, obj:Lcom/android/gallery3d/data/MediaObject;
    invoke-static/range {v19 .. v19}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoImage(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v3, Landroid/app/Activity;

    const v4, 0x7f0c0211

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 248
    .local v13, crop:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v3, Landroid/app/Activity;

    const v4, 0x7f0c0199

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v13, v6, v7

    invoke-virtual {v3, v4, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 250
    .local v10, convertCrop:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v10}, Lcom/android/gallery3d/ui/MenuExecutor;->clickStereoPhoto(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;Ljava/lang/String;)V

    goto :goto_0

    .line 253
    .end local v10           #convertCrop:Ljava/lang/String;
    .end local v13           #crop:Ljava/lang/String;
    :cond_2
    const-string v3, "com.android.camera.action.CROP"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v16

    .line 254
    .local v16, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v3, Landroid/app/Activity;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 260
    .end local v16           #intent:Landroid/content/Intent;
    .end local v17           #manager:Lcom/android/gallery3d/data/DataManager;
    .end local v19           #obj:Lcom/android/gallery3d/data/MediaObject;
    .end local v20           #path:Lcom/android/gallery3d/data/Path;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v17

    .line 261
    .restart local v17       #manager:Lcom/android/gallery3d/data/DataManager;
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/MenuExecutor;->getSingleSelectedPath()Lcom/android/gallery3d/data/Path;

    move-result-object v20

    .line 262
    .restart local v20       #path:Lcom/android/gallery3d/data/Path;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v19

    .line 263
    .restart local v19       #obj:Lcom/android/gallery3d/data/MediaObject;
    const-string v3, "MenuExecutor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onItemSelected:obj="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string v3, "MenuExecutor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onItemSelected:MediatekFeature.isStereoImage(obj)="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v19 .. v19}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoImage(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static/range {v19 .. v19}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoImage(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 266
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v3, Landroid/app/Activity;

    const v4, 0x7f0c020e

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 267
    .local v14, edit:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v3, Landroid/app/Activity;

    const v4, 0x7f0c0199

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v14, v6, v7

    invoke-virtual {v3, v4, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 269
    .local v11, convertEdit:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v11}, Lcom/android/gallery3d/ui/MenuExecutor;->clickStereoPhoto(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 272
    .end local v11           #convertEdit:Ljava/lang/String;
    .end local v14           #edit:Ljava/lang/String;
    :cond_3
    const-string v3, "android.intent.action.EDIT"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v16

    .line 274
    .restart local v16       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v3, Landroid/app/Activity;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 278
    .end local v16           #intent:Landroid/content/Intent;
    .end local v17           #manager:Lcom/android/gallery3d/data/DataManager;
    .end local v19           #obj:Lcom/android/gallery3d/data/MediaObject;
    .end local v20           #path:Lcom/android/gallery3d/data/Path;
    :pswitch_4
    const-string v3, "android.intent.action.ATTACH_DATA"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v16

    .line 280
    .restart local v16       #intent:Landroid/content/Intent;
    const-string v3, "mimeType"

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v9, Landroid/app/Activity;

    .line 282
    .local v9, activity:Landroid/app/Activity;
    const v3, 0x7f0c0212

    invoke-virtual {v9, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 287
    .end local v9           #activity:Landroid/app/Activity;
    .end local v16           #intent:Landroid/content/Intent;
    :pswitch_5
    const v5, 0x7f0c01fd

    .local v5, title:I
    :cond_4
    :goto_1
    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 354
    invoke-virtual/range {v3 .. v8}, Lcom/android/gallery3d/ui/MenuExecutor;->startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    goto/16 :goto_0

    .line 290
    .end local v5           #title:I
    :pswitch_6
    const v5, 0x7f0c020c

    .line 291
    .restart local v5       #title:I
    goto :goto_1

    .line 293
    .end local v5           #title:I
    :pswitch_7
    const v5, 0x7f0c020b

    .line 294
    .restart local v5       #title:I
    goto :goto_1

    .line 296
    .end local v5           #title:I
    :pswitch_8
    const v5, 0x7f0c020a

    .line 297
    .restart local v5       #title:I
    goto :goto_1

    .line 299
    .end local v5           #title:I
    :pswitch_9
    const v5, 0x7f0c024c

    .line 300
    .restart local v5       #title:I
    goto :goto_1

    .line 305
    .end local v5           #title:I
    :pswitch_a
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v17

    .line 309
    .restart local v17       #manager:Lcom/android/gallery3d/data/DataManager;
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/MenuExecutor;->getSingleSelectedPath()Lcom/android/gallery3d/data/Path;

    move-result-object v20

    .line 310
    .restart local v20       #path:Lcom/android/gallery3d/data/Path;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v23

    .line 311
    .local v23, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v3, Landroid/app/Activity;

    move-object/from16 v0, v23

    invoke-static {v3, v0}, Lcom/mediatek/gallery3d/drm/DrmHelper;->showProtectInfo(Landroid/app/Activity;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 316
    .end local v17           #manager:Lcom/android/gallery3d/data/DataManager;
    .end local v20           #path:Lcom/android/gallery3d/data/Path;
    .end local v23           #uri:Landroid/net/Uri;
    :pswitch_b
    const v5, 0x7f0c015b

    .line 317
    .restart local v5       #title:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v17

    .line 318
    .restart local v17       #manager:Lcom/android/gallery3d/data/DataManager;
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/MenuExecutor;->getSingleSelectedPath()Lcom/android/gallery3d/data/Path;

    move-result-object v20

    .line 319
    .restart local v20       #path:Lcom/android/gallery3d/data/Path;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v19

    .line 320
    .restart local v19       #obj:Lcom/android/gallery3d/data/MediaObject;
    invoke-static/range {v19 .. v19}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoImage(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 321
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v3, Landroid/app/Activity;

    const v4, 0x7f0c015b

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 322
    .local v21, print:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v3, Landroid/app/Activity;

    const v4, 0x7f0c0199

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v21, v6, v7

    invoke-virtual {v3, v4, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 324
    .local v12, convertPrint:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v12}, Lcom/android/gallery3d/ui/MenuExecutor;->clickStereoPhoto(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 328
    .end local v12           #convertPrint:Ljava/lang/String;
    .end local v21           #print:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v9, Landroid/app/Activity;

    .line 330
    .restart local v9       #activity:Landroid/app/Activity;
    const-string v3, "MenuExecutor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Print for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaType(Lcom/android/gallery3d/data/Path;)I

    move-result v22

    .line 332
    .local v22, type:I
    const/4 v3, 0x2

    move/from16 v0, v22

    if-ne v0, v3, :cond_4

    .line 335
    const-string v18, "image/*"

    .line 337
    .local v18, mimeType:Ljava/lang/String;
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 338
    .restart local v16       #intent:Landroid/content/Intent;
    const-string v3, "mediatek.intent.action.PRINT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const-string v3, "android.intent.category.ALTERNATIVE"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    const-string v3, "android.intent.extra.STREAM"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 343
    const v3, 0x7f0c015d

    :try_start_0
    invoke-virtual {v9, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 345
    :catch_0
    move-exception v15

    .line 346
    .local v15, ex:Landroid/content/ActivityNotFoundException;
    const v3, 0x7f0c015c

    const/4 v4, 0x0

    invoke-static {v9, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0102
        :pswitch_9
        :pswitch_5
        :pswitch_3
        :pswitch_b
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 4
    .parameter "menuItem"
    .parameter "confirmMsg"
    .parameter "listener"

    .prologue
    .line 390
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 392
    .local v0, action:I
    if-eqz p2, :cond_1

    .line 393
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;->onConfirmDialogShown()V

    .line 394
    :cond_0
    new-instance v1, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;

    invoke-direct {v1, p0, v0, p3}, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 395
    .local v1, cdl:Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c01ef

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c01ff

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 404
    .end local v1           #cdl:Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;
    :goto_0
    return-void

    .line 402
    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    .line 153
    return-void
.end method

.method public startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 6
    .parameter "action"
    .parameter "title"
    .parameter "listener"

    .prologue
    .line 407
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/MenuExecutor;->startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    .line 408
    return-void
.end method

.method public startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V
    .locals 7
    .parameter "action"
    .parameter "title"
    .parameter "listener"
    .parameter "waitOnStop"
    .parameter "showDialog"

    .prologue
    .line 412
    iget-object v4, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 413
    .local v2, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    .line 415
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 416
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v0, p2, v4}, Lcom/android/gallery3d/ui/MenuExecutor;->createProgressDialog(Landroid/content/Context;II)Landroid/app/ProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    .line 421
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0, v4, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->appendMessageForSingleId(Landroid/app/ProgressDialog;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :goto_0
    if-eqz p5, :cond_0

    .line 427
    iget-object v4, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 429
    :cond_0
    new-instance v3, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;

    invoke-direct {v3, p0, p1, v2, p3}, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;ILjava/util/ArrayList;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 430
    .local v3, operation:Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;
    iget-object v4, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    .line 431
    iput-boolean p4, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mWaitOnStop:Z

    .line 432
    return-void

    .line 422
    .end local v3           #operation:Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;
    :catch_0
    move-exception v1

    .line 423
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v4, "MenuExecutor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got RuntimeException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
