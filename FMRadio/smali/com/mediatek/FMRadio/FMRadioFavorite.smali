.class public Lcom/mediatek/FMRadio/FMRadioFavorite;
.super Landroid/app/Activity;
.source "FMRadioFavorite.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/mediatek/FMRadio/dialogs/AddFavoriteDialog$AddFavoriteListener;
.implements Lcom/mediatek/FMRadio/dialogs/EditFavoriteDialog$EditFavoriteListener;
.implements Lcom/mediatek/FMRadio/dialogs/DeleteFavoriteDialog$DeleteFavoriteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter;,
        Lcom/mediatek/FMRadio/FMRadioFavorite$FMBroadcastReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/mediatek/FMRadio/dialogs/AddFavoriteDialog$AddFavoriteListener;",
        "Lcom/mediatek/FMRadio/dialogs/EditFavoriteDialog$EditFavoriteListener;",
        "Lcom/mediatek/FMRadio/dialogs/DeleteFavoriteDialog$DeleteFavoriteListener;"
    }
.end annotation


# static fields
.field public static final ACTION_FAVORITE_HEADSET_PLUG:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioFavorite.ACTION_HEADSET_PLUG"

.field public static final ACTION_STATION_DELETE:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_STATION_DELETE"

.field public static final ACTIVITY_RESULT:Ljava/lang/String; = "ACTIVITY_RESULT"

.field private static final ADD_FAVORITE:Ljava/lang/String; = "AddFavorite"

.field private static final CONTMENU_ID_ADD:I = 0x3

.field private static final CONTMENU_ID_DELETE:I = 0x2

.field private static final CONTMENU_ID_DELETE1:I = 0x4

.field private static final CONTMENU_ID_EDIT:I = 0x1

.field private static final DELETE_FAVORITE:Ljava/lang/String; = "DeleteFavorite"

.field public static final DLGID_DELETE_CHANNEL:I = 0x1

.field public static final DLGID_NO_ANTENNA:I = 0x2

.field private static final EDIT_FAVORITE:Ljava/lang/String; = "EditFavorite"

.field private static final FAVORITE_FREQ:Ljava/lang/String; = "FAVORITE_FREQ"

.field private static final FAVORITE_NAME:Ljava/lang/String; = "FAVORITE_NAME"

.field public static final TAG:Ljava/lang/String; = "FmRx/Favorite"


# instance fields
.field private mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter;

.field private mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioFavorite$FMBroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDialogNoAntenna:Landroid/app/AlertDialog;

.field private mDlgStationFreq:I

.field private mDlgStationName:Ljava/lang/String;

.field private mIsFavoriteForeground:Z

.field private mLvFavorites:Landroid/widget/ListView;

.field mProjectStringExt:Lcom/mediatek/FMRadio/ext/IProjectStringExt;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 99
    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    .line 100
    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter;

    .line 102
    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;

    .line 103
    iput v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I

    .line 104
    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mContext:Landroid/content/Context;

    .line 111
    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogNoAntenna:Landroid/app/AlertDialog;

    .line 113
    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioFavorite$FMBroadcastReceiver;

    .line 114
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mIsFavoriteForeground:Z

    .line 118
    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mProjectStringExt:Lcom/mediatek/FMRadio/ext/IProjectStringExt;

    .line 352
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mIsFavoriteForeground:Z

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/FMRadio/FMRadioFavorite;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogNoAntenna:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/FMRadio/FMRadioFavorite;)Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/FMRadio/FMRadioFavorite;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/FMRadio/FMRadioFavorite;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I

    return v0
.end method


# virtual methods
.method public addFavorite()V
    .locals 8

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "AddFavorite"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/mediatek/FMRadio/dialogs/AddFavoriteDialog;

    .line 505
    .local v1, dialogFragment:Lcom/mediatek/FMRadio/dialogs/AddFavoriteDialog;
    if-nez v1, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    invoke-virtual {v1}, Lcom/mediatek/FMRadio/dialogs/AddFavoriteDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 511
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 515
    const v4, 0x7f060002

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 517
    .local v2, editText:Landroid/widget/EditText;
    if-eqz v2, :cond_0

    .line 521
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 524
    .local v3, newName:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 525
    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;

    .line 529
    :cond_2
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;

    const/4 v6, 0x2

    iget v7, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I

    invoke-static {v4, v5, v6, v7}, Lcom/mediatek/FMRadio/FMRadioStation;->updateStationToDB(Landroid/content/Context;Ljava/lang/String;II)V

    .line 531
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter;

    invoke-virtual {v4}, Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public deleteChannel()V
    .locals 3

    .prologue
    .line 619
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/mediatek/FMRadio/FMRadioStation;->deleteStationInDB(Landroid/content/Context;II)V

    .line 620
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter;->notifyDataSetChanged()V

    .line 621
    return-void
.end method

.method public deleteFavorite()V
    .locals 4

    .prologue
    .line 628
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;

    const/4 v2, 0x3

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/FMRadio/FMRadioStation;->updateStationToDB(Landroid/content/Context;Ljava/lang/String;II)V

    .line 629
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter;->notifyDataSetChanged()V

    .line 630
    return-void
.end method

.method public editFavorite()V
    .locals 13

    .prologue
    const/4 v11, 0x3

    const/4 v12, 0x2

    .line 538
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    const-string v10, "EditFavorite"

    invoke-virtual {v9, v10}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/mediatek/FMRadio/dialogs/EditFavoriteDialog;

    .line 539
    .local v1, dialogFragment:Lcom/mediatek/FMRadio/dialogs/EditFavoriteDialog;
    if-nez v1, :cond_1

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    invoke-virtual {v1}, Lcom/mediatek/FMRadio/dialogs/EditFavoriteDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 544
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 548
    const v9, 0x7f060007

    invoke-virtual {v0, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 549
    .local v4, nameEditText:Landroid/widget/EditText;
    const v9, 0x7f060009

    invoke-virtual {v0, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 551
    .local v3, frequencyEditText:Landroid/widget/EditText;
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 555
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 556
    .local v5, newName:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 559
    .local v8, newStationFreqStr:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_2

    .line 560
    iput-object v5, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;

    .line 563
    :cond_2
    const/4 v7, 0x0

    .line 566
    .local v7, newStationFreq:F
    :try_start_0
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 571
    :goto_1
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeStation(F)I

    move-result v6

    .line 572
    .local v6, newStation:I
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioUtils;->isValidStation(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 575
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mContext:Landroid/content/Context;

    invoke-static {v9, v6, v12}, Lcom/mediatek/FMRadio/FMRadioStation;->isStationExist(Landroid/content/Context;II)Z

    move-result v9

    if-eqz v9, :cond_4

    iget v9, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I

    if-eq v6, v9, :cond_4

    .line 577
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mContext:Landroid/content/Context;

    invoke-static {v9, v6, v12}, Lcom/mediatek/FMRadio/FMRadioStation;->deleteStationInDB(Landroid/content/Context;II)V

    .line 582
    :cond_3
    :goto_2
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;

    iget v11, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I

    invoke-static {v9, v10, v11, v6, v12}, Lcom/mediatek/FMRadio/FMRadioStation;->updateStationToDB(Landroid/content/Context;Ljava/lang/String;III)V

    .line 584
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter;

    invoke-virtual {v9}, Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 567
    .end local v6           #newStation:I
    :catch_0
    move-exception v2

    .line 568
    .local v2, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 578
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v6       #newStation:I
    :cond_4
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mContext:Landroid/content/Context;

    invoke-static {v9, v6, v11}, Lcom/mediatek/FMRadio/FMRadioStation;->isStationExist(Landroid/content/Context;II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 580
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mContext:Landroid/content/Context;

    invoke-static {v9, v6, v11}, Lcom/mediatek/FMRadio/FMRadioStation;->deleteStationInDB(Landroid/content/Context;II)V

    goto :goto_2

    .line 586
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f04002d

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const/4 v9, 0x0

    .line 249
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v1, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 251
    .local v1, position:I
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    invoke-interface {v4, v1, v5, v6}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 253
    .local v0, itemView:Landroid/view/View;
    const v4, 0x7f060045

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 254
    .local v2, stationFreqView:Landroid/widget/TextView;
    const v4, 0x7f060046

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 255
    .local v3, stationNameView:Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeStation(F)I

    move-result v4

    iput v4, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I

    .line 256
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;

    .line 257
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 286
    const-string v4, "FmRx/Favorite"

    const-string v5, "invalid menu item"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :goto_0
    return v9

    .line 260
    :pswitch_0
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationCount(Landroid/content/Context;I)I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_0

    .line 262
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mProjectStringExt:Lcom/mediatek/FMRadio/ext/IProjectStringExt;

    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mContext:Landroid/content/Context;

    const v7, 0x7f040023

    const v8, 0x7f040024

    invoke-interface {v5, v6, v7, v8}, Lcom/mediatek/FMRadio/ext/IProjectStringExt;->getProjectString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->showAddFavoriteDialog()V

    goto :goto_0

    .line 272
    :pswitch_1
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->showEditFavoriteDialog()V

    goto :goto_0

    .line 277
    :pswitch_2
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->showDeleteFavoriteDialog()V

    goto :goto_0

    .line 281
    :pswitch_3
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/mediatek/FMRadio/FMRadioFavorite;->showDialog(I)V

    goto :goto_0

    .line 257
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 147
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 148
    const-string v0, "FmRx/Favorite"

    const-string v1, "begin FMRadioFavorite.onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iput-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mIsFavoriteForeground:Z

    .line 151
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 152
    .local v8, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioFavorite$FMBroadcastReceiver;

    invoke-direct {v0, p0, v3}, Lcom/mediatek/FMRadio/FMRadioFavorite$FMBroadcastReceiver;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite;Lcom/mediatek/FMRadio/FMRadioFavorite$1;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioFavorite$FMBroadcastReceiver;

    .line 154
    const-string v0, "FmRx/Favorite"

    const-string v1, "Register broadcast receiver."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioFavorite$FMBroadcastReceiver;

    invoke-virtual {p0, v0, v8}, Lcom/mediatek/FMRadio/FMRadioFavorite;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 158
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->setVolumeControlStream(I)V

    .line 159
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 160
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->setContentView(I)V

    .line 162
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 163
    .local v6, actionBar:Landroid/app/ActionBar;
    const v0, 0x7f040001

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 164
    invoke-virtual {v6, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 165
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mContext:Landroid/content/Context;

    .line 166
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/FMRadio/ExtensionUtils;->getExtension(Landroid/content/Context;)Lcom/mediatek/FMRadio/ext/IProjectStringExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mProjectStringExt:Lcom/mediatek/FMRadio/ext/IProjectStringExt;

    .line 167
    if-eqz p1, :cond_0

    .line 168
    const-string v0, "FAVORITE_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;

    .line 169
    const-string v0, "FAVORITE_FREQ"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I

    .line 172
    :cond_0
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter;

    const v2, 0x7f030007

    new-array v4, v10, [Ljava/lang/String;

    const-string v1, "COLUMN_STATION_TYPE"

    aput-object v1, v4, v9

    const-string v1, "COLUMN_STATION_FREQ"

    aput-object v1, v4, v5

    const/4 v1, 0x2

    const-string v5, "COLUMN_STATION_NAME"

    aput-object v5, v4, v1

    new-array v5, v10, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter;

    .line 179
    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    .line 180
    const v0, 0x7f06000c

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 181
    .local v7, emptyView:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 182
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v9, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 184
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioFavorite$1;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioFavorite$1;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioFavorite$2;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioFavorite$2;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 240
    const-string v0, "FmRx/Favorite"

    const-string v1, "end FMRadioFavorite.onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void

    .line 172
    :array_0
    .array-data 0x4
        0x44t 0x0t 0x6t 0x7ft
        0x45t 0x0t 0x6t 0x7ft
        0x46t 0x0t 0x6t 0x7ft
    .end array-data
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    .line 441
    const-string v3, "FmRx/Favorite"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>> FMRadioFavorite.onCreateDialog ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v1, 0x0

    .line 443
    .local v1, dlgRet:Landroid/app/Dialog;
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 444
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/FMRadio/ExtensionUtils;->getExtension(Landroid/content/Context;)Lcom/mediatek/FMRadio/ext/IProjectStringExt;

    move-result-object v2

    .line 445
    .local v2, projectStringExt:Lcom/mediatek/FMRadio/ext/IProjectStringExt;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mContext:Landroid/content/Context;

    const v5, 0x7f040018

    const v6, 0x7f04001a

    invoke-interface {v2, v4, v5, v6}, Lcom/mediatek/FMRadio/ext/IProjectStringExt;->getProjectString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mContext:Landroid/content/Context;

    const v5, 0x7f040021

    const v6, 0x7f04001c

    invoke-interface {v2, v4, v5, v6}, Lcom/mediatek/FMRadio/ext/IProjectStringExt;->getProjectString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f040010

    new-instance v5, Lcom/mediatek/FMRadio/FMRadioFavorite$4;

    invoke-direct {v5, p0}, Lcom/mediatek/FMRadio/FMRadioFavorite$4;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f040011

    new-instance v5, Lcom/mediatek/FMRadio/FMRadioFavorite$3;

    invoke-direct {v5, p0}, Lcom/mediatek/FMRadio/FMRadioFavorite$3;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 470
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 490
    .end local v0           #dialog:Landroid/app/AlertDialog;
    .end local v2           #projectStringExt:Lcom/mediatek/FMRadio/ext/IProjectStringExt;
    :cond_0
    :goto_0
    return-object v1

    .line 472
    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 473
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f04001e

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f04001d

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f04001f

    new-instance v5, Lcom/mediatek/FMRadio/FMRadioFavorite$5;

    invoke-direct {v5, p0}, Lcom/mediatek/FMRadio/FMRadioFavorite$5;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogNoAntenna:Landroid/app/AlertDialog;

    .line 487
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogNoAntenna:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    .line 312
    sget-object v2, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 313
    .local v2, uri:Landroid/net/Uri;
    const-string v4, "COLUMN_STATION_TYPE IN (?, ?)"

    .line 314
    .local v4, select:Ljava/lang/String;
    const-string v6, "COLUMN_STATION_TYPE,COLUMN_STATION_FREQ"

    .line 315
    .local v6, order:Ljava/lang/String;
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v3, Lcom/mediatek/FMRadio/FMRadioStation;->COLUMNS:[Ljava/lang/String;

    new-array v5, v7, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v1

    const/4 v1, 0x1

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .local v0, cursorLoader:Landroid/content/CursorLoader;
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 604
    const-string v0, "FmRx/Favorite"

    const-string v1, ">>> FMRadioFavorite.onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 606
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mIsFavoriteForeground:Z

    .line 608
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioFavorite$FMBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 609
    const-string v0, "FmRx/Favorite"

    const-string v1, "Unregister broadcast receiver."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioFavorite$FMBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 611
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioFavorite$FMBroadcastReceiver;

    .line 613
    :cond_0
    const-string v0, "FmRx/Favorite"

    const-string v1, "<<< FMRadioFavorite.onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 335
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter;

    invoke-virtual {v0, p2}, Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 336
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 345
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mAdapter:Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 346
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 298
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 299
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 300
    const/4 v0, 0x1

    .line 302
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 598
    const-string v0, "FmRx/Favorite"

    const-string v1, ">>> FMRadioFavorite.onPause"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 600
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mIsFavoriteForeground:Z

    .line 601
    const-string v0, "FmRx/Favorite"

    const-string v1, "<<< FMRadioFavorite.onPause"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 592
    const-string v0, "FmRx/Favorite"

    const-string v1, ">>> FMRadioFavorite.onResume"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 594
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mIsFavoriteForeground:Z

    .line 595
    const-string v0, "FmRx/Favorite"

    const-string v1, "<<< FMRadioFavorite.onResume"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 495
    const-string v0, "FAVORITE_NAME"

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v0, "FAVORITE_FREQ"

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 497
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 498
    return-void
.end method

.method public showAddFavoriteDialog()V
    .locals 3

    .prologue
    .line 418
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/dialogs/AddFavoriteDialog;->newInstance(Ljava/lang/String;I)Lcom/mediatek/FMRadio/dialogs/AddFavoriteDialog;

    move-result-object v0

    .line 419
    .local v0, fragment:Lcom/mediatek/FMRadio/dialogs/AddFavoriteDialog;
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "AddFavorite"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/FMRadio/dialogs/AddFavoriteDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method public showDeleteFavoriteDialog()V
    .locals 3

    .prologue
    .line 435
    invoke-static {}, Lcom/mediatek/FMRadio/dialogs/DeleteFavoriteDialog;->newInstance()Lcom/mediatek/FMRadio/dialogs/DeleteFavoriteDialog;

    move-result-object v0

    .line 436
    .local v0, newFragment:Lcom/mediatek/FMRadio/dialogs/DeleteFavoriteDialog;
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DeleteFavorite"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/FMRadio/dialogs/DeleteFavoriteDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public showEditFavoriteDialog()V
    .locals 3

    .prologue
    .line 427
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/dialogs/EditFavoriteDialog;->newInstance(Ljava/lang/String;I)Lcom/mediatek/FMRadio/dialogs/EditFavoriteDialog;

    move-result-object v0

    .line 428
    .local v0, newFragment:Lcom/mediatek/FMRadio/dialogs/EditFavoriteDialog;
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "EditFavorite"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/FMRadio/dialogs/EditFavoriteDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 429
    return-void
.end method
