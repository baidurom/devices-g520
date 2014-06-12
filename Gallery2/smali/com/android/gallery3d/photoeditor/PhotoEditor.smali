.class public Lcom/android/gallery3d/photoeditor/PhotoEditor;
.super Landroid/app/Activity;
.source "PhotoEditor.java"


# static fields
.field private static final LOG:Z = true

.field private static final SAVE_URI_KEY:Ljava/lang/String; = "save_uri"

.field private static final TAG:Ljava/lang/String; = "PhotoEditor"


# instance fields
.field private actionBar:Lcom/android/gallery3d/photoeditor/ActionBar;

.field private effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

.field private filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

.field private mSourceUriForSaving:Landroid/net/Uri;

.field private saveUri:Landroid/net/Uri;

.field private sourceUri:Landroid/net/Uri;

.field private toolbar:Lcom/android/gallery3d/photoeditor/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/ActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBar:Lcom/android/gallery3d/photoeditor/ActionBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/Toolbar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->toolbar:Lcom/android/gallery3d/photoeditor/Toolbar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/EffectsBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/FilterStack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/gallery3d/photoeditor/PhotoEditor;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mSourceUriForSaving:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->sourceUri:Landroid/net/Uri;

    return-object v0
.end method

.method private createBackRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$6;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$6;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    return-object v0
.end method

.method private createSaveRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$4;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$4;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    return-object v0
.end method

.method private createShareRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$5;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$5;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    return-object v0
.end method

.method private createUndoRedoRunnable(Z)Ljava/lang/Runnable;
    .locals 1
    .parameter "undo"

    .prologue
    .line 113
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$3;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/photoeditor/PhotoEditor$3;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;Z)V

    return-object v0
.end method

.method private openPhoto()V
    .locals 5

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->toolbar:Lcom/android/gallery3d/photoeditor/Toolbar;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/Toolbar;->showSpinner()V

    .line 95
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$2;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    .line 109
    .local v0, callback:Lcom/android/gallery3d/photoeditor/LoadScreennailTask$Callback;
    new-instance v1, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;

    invoke-direct {v1, p0, v0}, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;-><init>(Landroid/content/Context;Lcom/android/gallery3d/photoeditor/LoadScreennailTask$Callback;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->sourceUri:Landroid/net/Uri;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 110
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 235
    const-string v0, "PhotoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackPressed() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBar:Lcom/android/gallery3d/photoeditor/ActionBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/ActionBar;->clickBack()V

    .line 238
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v2, 0x7f040038

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 50
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->sourceUri:Landroid/net/Uri;

    .line 54
    const-string v2, "UriForSaving"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, uriForSaving:Ljava/lang/String;
    if-nez v1, :cond_3

    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mSourceUriForSaving:Landroid/net/Uri;

    .line 60
    .end local v1           #uriForSaving:Ljava/lang/String;
    :cond_0
    const-string v2, "PhotoEditor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate() sourceUri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->sourceUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mSourceUriForSaving:Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 63
    const-string v2, "PhotoEditor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate() sourceUriForSaving="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->mSourceUriForSaving:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_1
    const v2, 0x7f0b0085

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/photoeditor/Toolbar;

    iput-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->toolbar:Lcom/android/gallery3d/photoeditor/Toolbar;

    .line 67
    const v2, 0x7f0b0089

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/photoeditor/ActionBar;

    iput-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBar:Lcom/android/gallery3d/photoeditor/ActionBar;

    .line 68
    new-instance v5, Lcom/android/gallery3d/photoeditor/FilterStack;

    const v2, 0x7f0b0086

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/photoeditor/PhotoView;

    new-instance v6, Lcom/android/gallery3d/photoeditor/PhotoEditor$1;

    invoke-direct {v6, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$1;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    invoke-direct {v5, v2, v6, p1}, Lcom/android/gallery3d/photoeditor/FilterStack;-><init>(Lcom/android/gallery3d/photoeditor/PhotoView;Lcom/android/gallery3d/photoeditor/FilterStack$StackListener;Landroid/os/Bundle;)V

    iput-object v5, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    .line 76
    if-eqz p1, :cond_2

    .line 77
    const-string v2, "save_uri"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;

    .line 78
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBar:Lcom/android/gallery3d/photoeditor/ActionBar;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;

    if-nez v2, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Lcom/android/gallery3d/photoeditor/ActionBar;->updateSave(Z)V

    .line 82
    :cond_2
    const v2, 0x7f0b0087

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/photoeditor/EffectsBar;

    iput-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    .line 83
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/photoeditor/EffectsBar;->initialize(Lcom/android/gallery3d/photoeditor/FilterStack;)V

    .line 84
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setEnabled(Z)V

    .line 86
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBar:Lcom/android/gallery3d/photoeditor/ActionBar;

    const v5, 0x7f0b0079

    invoke-direct {p0, v3}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createUndoRedoRunnable(Z)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/gallery3d/photoeditor/ActionBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 87
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBar:Lcom/android/gallery3d/photoeditor/ActionBar;

    const v3, 0x7f0b007a

    invoke-direct {p0, v4}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createUndoRedoRunnable(Z)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/photoeditor/ActionBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 88
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBar:Lcom/android/gallery3d/photoeditor/ActionBar;

    const v3, 0x7f0b007c

    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createSaveRunnable()Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/photoeditor/ActionBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 89
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBar:Lcom/android/gallery3d/photoeditor/ActionBar;

    const v3, 0x7f0b007d

    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createShareRunnable()Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/photoeditor/ActionBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 90
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBar:Lcom/android/gallery3d/photoeditor/ActionBar;

    const v3, 0x7f0b0076

    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createBackRunnable()Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/photoeditor/ActionBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 91
    return-void

    .line 55
    .restart local v1       #uriForSaving:Ljava/lang/String;
    :cond_3
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_0

    .end local v1           #uriForSaving:Ljava/lang/String;
    :cond_4
    move v2, v4

    .line 78
    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 284
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 286
    const-string v0, "PhotoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 242
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 244
    const-string v0, "PhotoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/FilterStack;->onPause()V

    .line 248
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->toolbar:Lcom/android/gallery3d/photoeditor/Toolbar;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/Toolbar;->dismissSpinner()V

    .line 249
    return-void
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 292
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 294
    const-string v0, "PhotoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestart() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 253
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 255
    const-string v0, "PhotoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/FilterStack;->onResume()V

    .line 258
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->openPhoto()V

    .line 259
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->toolbar:Lcom/android/gallery3d/photoeditor/Toolbar;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/Toolbar;->syncIdle()V

    .line 260
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 228
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/FilterStack;->saveStacks(Landroid/os/Bundle;)V

    .line 229
    const-string v0, "save_uri"

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 230
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 268
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 270
    const-string v0, "PhotoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 276
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 278
    const-string v0, "PhotoEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void
.end method
