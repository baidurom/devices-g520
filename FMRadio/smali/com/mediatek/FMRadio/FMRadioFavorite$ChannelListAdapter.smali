.class Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "FMRadioFavorite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioFavorite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChannelListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter$ViewHolder;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 0
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 354
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 355
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 400
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter$ViewHolder;

    .line 401
    .local v3, viewHolder:Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter$ViewHolder;
    const-string v4, "COLUMN_STATION_TYPE"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 402
    .local v2, stationType:I
    const-string v4, "COLUMN_STATION_FREQ"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 403
    .local v0, stationFreq:I
    const-string v4, "COLUMN_STATION_NAME"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, stationName:Ljava/lang/String;
    const/4 v4, 0x2

    if-ne v4, v2, :cond_0

    .line 405
    iget-object v4, v3, Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter$ViewHolder;->mStationTypeView:Landroid/widget/ImageView;

    const v5, 0x7f020008

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 409
    :goto_0
    iget-object v4, v3, Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter$ViewHolder;->mStationFreqView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->formatStation(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v4, v3, Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter$ViewHolder;->mStationNameView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    return-void

    .line 407
    :cond_0
    iget-object v4, v3, Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter$ViewHolder;->mStationTypeView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 379
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 380
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter$ViewHolder;-><init>()V

    .line 381
    .local v1, viewHolder:Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter$ViewHolder;
    const v2, 0x7f060044

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter$ViewHolder;->mStationTypeView:Landroid/widget/ImageView;

    .line 382
    const v2, 0x7f060045

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter$ViewHolder;->mStationFreqView:Landroid/widget/TextView;

    .line 383
    const v2, 0x7f060046

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mediatek/FMRadio/FMRadioFavorite$ChannelListAdapter$ViewHolder;->mStationNameView:Landroid/widget/TextView;

    .line 384
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 385
    return-object v0
.end method
