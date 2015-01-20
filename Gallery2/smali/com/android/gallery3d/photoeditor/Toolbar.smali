.class public Lcom/android/gallery3d/photoeditor/Toolbar;
.super Landroid/widget/RelativeLayout;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;
    }
.end annotation


# static fields
.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "Toolbar"


# instance fields
.field private final idleHandler:Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;

.field private spinner:Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog;

.field private final tools:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->tools:Ljava/util/List;

    .line 48
    new-instance v0, Lcom/android/gallery3d/photoeditor/Toolbar$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/Toolbar$1;-><init>(Lcom/android/gallery3d/photoeditor/Toolbar;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 64
    new-instance v0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->tools:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->idleHandler:Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;

    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->idleHandler:Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->killIdle()V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/photoeditor/Toolbar;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->tools:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/photoeditor/Toolbar;)Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->idleHandler:Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;

    return-object v0
.end method


# virtual methods
.method public dismissSpinner()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->spinner:Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->spinner:Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog;->dismiss()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->spinner:Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog;

    .line 90
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->idleHandler:Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->killIdle()V

    .line 95
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public showSpinner()V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->spinner:Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->tools:Ljava/util/List;

    new-instance v3, Lcom/android/gallery3d/photoeditor/Toolbar$2;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/photoeditor/Toolbar$2;-><init>(Lcom/android/gallery3d/photoeditor/Toolbar;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog$OnTouchListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->spinner:Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog;

    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->spinner:Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog;->show()V

    .line 83
    :cond_0
    return-void
.end method

.method public syncIdle()V
    .locals 3

    .prologue
    .line 169
    const-string v0, "Toolbar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncIdle() idleHandler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->idleHandler:Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getAlpha()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->idleHandler:Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;

    if-eqz v0, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->idleHandler:Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v2, 0x3f80

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->syncViewIdle(Z)V

    .line 174
    :cond_0
    return-void

    .line 172
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
