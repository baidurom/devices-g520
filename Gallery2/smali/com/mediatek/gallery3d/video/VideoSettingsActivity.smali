.class public Lcom/mediatek/gallery3d/video/VideoSettingsActivity;
.super Landroid/app/ListActivity;
.source "VideoSettingsActivity.java"


# static fields
.field private static final SELECTED_STEP_OPTION:Ljava/lang/String; = "selected_step_option"

.field private static final STEP_OPTION_SIX_SECOND:I = 0x1

.field private static final STEP_OPTION_THREE_SECOND:I = 0x0

.field private static final VIDEO_PLAYER_DATA:Ljava/lang/String; = "video_player_data"

.field private static sStepOptionArray:[I


# instance fields
.field private DIALOG_TAG_SELECT_STEP_OPTION:Ljava/lang/String;

.field private OPTION_DESC:Ljava/lang/String;

.field private OPTION_NAME:Ljava/lang/String;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSelectedStepOption:I

.field private mStepOptionSelectedListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->sStepOptionArray:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 37
    const-string v0, "option_name"

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->OPTION_NAME:Ljava/lang/String;

    .line 38
    const-string v0, "option_desc"

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->OPTION_DESC:Ljava/lang/String;

    .line 39
    const-string v0, "step_option_dialog"

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->DIALOG_TAG_SELECT_STEP_OPTION:Ljava/lang/String;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->mSelectedStepOption:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 116
    new-instance v0, Lcom/mediatek/gallery3d/video/VideoSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/video/VideoSettingsActivity$1;-><init>(Lcom/mediatek/gallery3d/video/VideoSettingsActivity;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->mStepOptionSelectedListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static getSelectedStepOption(I)I
    .locals 1
    .parameter "which"

    .prologue
    .line 129
    sget-object v0, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->sStepOptionArray:[I

    aget v0, v0, p0

    return v0
.end method

.method private getStepOptionIDArray()[I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    new-array v0, v4, [I

    .line 108
    .local v0, stepOptionIDArray:[I
    const v1, 0x7f0c0159

    aput v1, v0, v2

    .line 109
    const v1, 0x7f0c015a

    aput v1, v0, v3

    .line 110
    new-array v1, v4, [I

    sput-object v1, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->sStepOptionArray:[I

    .line 111
    sget-object v1, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->sStepOptionArray:[I

    aput v2, v1, v2

    .line 112
    sget-object v1, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->sStepOptionArray:[I

    aput v3, v1, v3

    .line 113
    return-object v0
.end method

.method private removeOldFragmentByTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 140
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroid/app/DialogFragment;

    .line 141
    .local v1, oldFragment:Landroid/app/DialogFragment;
    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 144
    :cond_0
    return-void
.end method

.method private restoreDialogFragment()V
    .locals 3

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 148
    .local v1, fragmentManager:Landroid/app/FragmentManager;
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->DIALOG_TAG_SELECT_STEP_OPTION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 149
    .local v0, fragment:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 150
    check-cast v0, Lcom/mediatek/gallery3d/video/StepOptionDialogFragment;

    .end local v0           #fragment:Landroid/app/Fragment;
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->mStepOptionSelectedListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/mediatek/gallery3d/video/StepOptionDialogFragment;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 152
    :cond_0
    return-void
.end method

.method private restoreStepOptionSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 165
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 166
    const-string v0, "video_player_data"

    invoke-virtual {p0, v0, v2}, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "selected_step_option"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->mSelectedStepOption:I

    .line 169
    return-void
.end method

.method private storeStepOptionSettings()V
    .locals 3

    .prologue
    .line 155
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 156
    const-string v1, "video_player_data"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 159
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 160
    const-string v1, "selected_step_option"

    iget v2, p0, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->mSelectedStepOption:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 161
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 162
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 50
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 52
    .local v6, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v6, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c0156

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    const v1, 0x7f04004c

    invoke-virtual {p0, v1}, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->setContentView(I)V

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    .local v2, arrlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v7, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->OPTION_NAME:Ljava/lang/String;

    const v3, 0x7f0c0157

    invoke-virtual {p0, v3}, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->OPTION_DESC:Ljava/lang/String;

    const v3, 0x7f0c0158

    invoke-virtual {p0, v3}, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x1090007

    new-array v4, v9, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->OPTION_NAME:Ljava/lang/String;

    aput-object v5, v4, v1

    iget-object v1, p0, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->OPTION_DESC:Ljava/lang/String;

    aput-object v1, v4, v8

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 63
    .local v0, adapter:Landroid/widget/SimpleAdapter;
    invoke-virtual {p0, v0}, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->restoreStepOptionSettings()V

    .line 65
    return-void

    .line 60
    nop

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->storeStepOptionSettings()V

    .line 86
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 87
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 91
    packed-switch p3, :pswitch_data_0

    .line 104
    :goto_0
    return-void

    .line 93
    :pswitch_0
    const/4 v1, 0x0

    .line 94
    .local v1, newFragment:Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 95
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->DIALOG_TAG_SELECT_STEP_OPTION:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->removeOldFragmentByTag(Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->getStepOptionIDArray()[I

    move-result-object v2

    const v3, 0x7f0c0157

    iget v4, p0, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->mSelectedStepOption:I

    invoke-static {v2, v3, v4}, Lcom/mediatek/gallery3d/video/StepOptionDialogFragment;->newInstance([III)Lcom/mediatek/gallery3d/video/StepOptionDialogFragment;

    move-result-object v1

    move-object v2, v1

    .line 98
    check-cast v2, Lcom/mediatek/gallery3d/video/StepOptionDialogFragment;

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->mStepOptionSelectedListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/mediatek/gallery3d/video/StepOptionDialogFragment;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 99
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->DIALOG_TAG_SELECT_STEP_OPTION:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 173
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 180
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 177
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->finish()V

    .line 178
    const/4 v0, 0x1

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 76
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->restoreDialogFragment()V

    .line 77
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->restoreStepOptionSettings()V

    .line 78
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->storeStepOptionSettings()V

    .line 70
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 71
    return-void
.end method

.method public setSelectedStepOption(I)V
    .locals 1
    .parameter "which"

    .prologue
    .line 125
    invoke-static {p1}, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->getSelectedStepOption(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->mSelectedStepOption:I

    .line 126
    return-void
.end method
