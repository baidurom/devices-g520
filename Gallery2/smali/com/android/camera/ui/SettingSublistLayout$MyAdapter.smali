.class Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingSublistLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/SettingSublistLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# instance fields
.field private mSelectedIndex:I

.field final synthetic this$0:Lcom/android/camera/ui/SettingSublistLayout;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/SettingSublistLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;->this$0:Lcom/android/camera/ui/SettingSublistLayout;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 70
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;->this$0:Lcom/android/camera/ui/SettingSublistLayout;

    #getter for: Lcom/android/camera/ui/SettingSublistLayout;->mPreference:Lcom/android/camera/ListPreference;
    invoke-static {v0}, Lcom/android/camera/ui/SettingSublistLayout;->access$000(Lcom/android/camera/ui/SettingSublistLayout;)Lcom/android/camera/ListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 84
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, holder:Lcom/android/camera/ui/SettingSublistLayout$ViewHolder;
    if-nez p2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;->this$0:Lcom/android/camera/ui/SettingSublistLayout;

    #getter for: Lcom/android/camera/ui/SettingSublistLayout;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/camera/ui/SettingSublistLayout;->access$100(Lcom/android/camera/ui/SettingSublistLayout;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f04004e

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 92
    new-instance v0, Lcom/android/camera/ui/SettingSublistLayout$ViewHolder;

    .end local v0           #holder:Lcom/android/camera/ui/SettingSublistLayout$ViewHolder;
    iget-object v2, p0, Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;->this$0:Lcom/android/camera/ui/SettingSublistLayout;

    invoke-direct {v0, v2, v5}, Lcom/android/camera/ui/SettingSublistLayout$ViewHolder;-><init>(Lcom/android/camera/ui/SettingSublistLayout;Lcom/android/camera/ui/SettingSublistLayout$1;)V

    .line 93
    .restart local v0       #holder:Lcom/android/camera/ui/SettingSublistLayout$ViewHolder;
    const v2, 0x7f0b0025

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/camera/ui/SettingSublistLayout$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 94
    const v2, 0x7f0b000d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/camera/ui/SettingSublistLayout$ViewHolder;->mTextView:Landroid/widget/TextView;

    .line 95
    const v2, 0x7f0b00e1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, v0, Lcom/android/camera/ui/SettingSublistLayout$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    .line 96
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 100
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;->this$0:Lcom/android/camera/ui/SettingSublistLayout;

    #getter for: Lcom/android/camera/ui/SettingSublistLayout;->mPreference:Lcom/android/camera/ListPreference;
    invoke-static {v2}, Lcom/android/camera/ui/SettingSublistLayout;->access$000(Lcom/android/camera/ui/SettingSublistLayout;)Lcom/android/camera/ListPreference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/camera/ListPreference;->getIconId(I)I

    move-result v1

    .line 101
    .local v1, iconId:I
    iget-object v2, p0, Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;->this$0:Lcom/android/camera/ui/SettingSublistLayout;

    #getter for: Lcom/android/camera/ui/SettingSublistLayout;->mPreference:Lcom/android/camera/ListPreference;
    invoke-static {v2}, Lcom/android/camera/ui/SettingSublistLayout;->access$000(Lcom/android/camera/ui/SettingSublistLayout;)Lcom/android/camera/ListPreference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/camera/ListPreference;->getIconId(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 102
    iget-object v2, v0, Lcom/android/camera/ui/SettingSublistLayout$ViewHolder;->mImageView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    :goto_1
    iget-object v2, v0, Lcom/android/camera/ui/SettingSublistLayout$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;->this$0:Lcom/android/camera/ui/SettingSublistLayout;

    #getter for: Lcom/android/camera/ui/SettingSublistLayout;->mPreference:Lcom/android/camera/ListPreference;
    invoke-static {v4}, Lcom/android/camera/ui/SettingSublistLayout;->access$000(Lcom/android/camera/ui/SettingSublistLayout;)Lcom/android/camera/ListPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v4, v0, Lcom/android/camera/ui/SettingSublistLayout$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    iget v2, p0, Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;->mSelectedIndex:I

    if-ne p1, v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 109
    iget-object v2, p0, Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;->this$0:Lcom/android/camera/ui/SettingSublistLayout;

    #getter for: Lcom/android/camera/ui/SettingSublistLayout;->mPreference:Lcom/android/camera/ListPreference;
    invoke-static {v2}, Lcom/android/camera/ui/SettingSublistLayout;->access$000(Lcom/android/camera/ui/SettingSublistLayout;)Lcom/android/camera/ListPreference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/camera/ListPreference;->isEnabled(I)Z

    move-result v2

    invoke-static {p2, v2}, Lcom/android/camera/SettingUtils;->setEnabledState(Landroid/view/View;Z)V

    .line 110
    return-object p2

    .line 98
    .end local v1           #iconId:I
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/android/camera/ui/SettingSublistLayout$ViewHolder;
    check-cast v0, Lcom/android/camera/ui/SettingSublistLayout$ViewHolder;

    .restart local v0       #holder:Lcom/android/camera/ui/SettingSublistLayout$ViewHolder;
    goto :goto_0

    .line 104
    .restart local v1       #iconId:I
    :cond_1
    iget-object v2, v0, Lcom/android/camera/ui/SettingSublistLayout$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    iget-object v2, v0, Lcom/android/camera/ui/SettingSublistLayout$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    move v2, v3

    .line 108
    goto :goto_2
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;->this$0:Lcom/android/camera/ui/SettingSublistLayout;

    #getter for: Lcom/android/camera/ui/SettingSublistLayout;->mPreference:Lcom/android/camera/ListPreference;
    invoke-static {v0}, Lcom/android/camera/ui/SettingSublistLayout;->access$000(Lcom/android/camera/ui/SettingSublistLayout;)Lcom/android/camera/ListPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ListPreference;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public updateItemSelected(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 119
    iput p1, p0, Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;->mSelectedIndex:I

    .line 120
    return-void
.end method
