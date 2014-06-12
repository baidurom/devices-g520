.class Lcom/android/camera/ui/SettingVirtualLayout$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingVirtualLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/SettingVirtualLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# instance fields
.field private mSelectedIndex:I

.field final synthetic this$0:Lcom/android/camera/ui/SettingVirtualLayout;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/SettingVirtualLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/camera/ui/SettingVirtualLayout$MyAdapter;->this$0:Lcom/android/camera/ui/SettingVirtualLayout;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 67
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/SettingVirtualLayout$MyAdapter;->this$0:Lcom/android/camera/ui/SettingVirtualLayout;

    #getter for: Lcom/android/camera/ui/SettingVirtualLayout;->mPrefs:[Lcom/android/camera/ListPreference;
    invoke-static {v0}, Lcom/android/camera/ui/SettingVirtualLayout;->access$000(Lcom/android/camera/ui/SettingVirtualLayout;)[Lcom/android/camera/ListPreference;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 81
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 86
    const/4 v1, 0x0

    .line 87
    .local v1, holder:Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;
    if-nez p2, :cond_1

    .line 88
    iget-object v5, p0, Lcom/android/camera/ui/SettingVirtualLayout$MyAdapter;->this$0:Lcom/android/camera/ui/SettingVirtualLayout;

    #getter for: Lcom/android/camera/ui/SettingVirtualLayout;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v5}, Lcom/android/camera/ui/SettingVirtualLayout;->access$100(Lcom/android/camera/ui/SettingVirtualLayout;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040050

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 89
    new-instance v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;

    .end local v1           #holder:Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;
    iget-object v5, p0, Lcom/android/camera/ui/SettingVirtualLayout$MyAdapter;->this$0:Lcom/android/camera/ui/SettingVirtualLayout;

    invoke-direct {v1, v5, v7}, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;-><init>(Lcom/android/camera/ui/SettingVirtualLayout;Lcom/android/camera/ui/SettingVirtualLayout$1;)V

    .line 90
    .restart local v1       #holder:Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;
    const v5, 0x7f0b000d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 91
    const v5, 0x7f0b00e2

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mTitle1:Landroid/widget/TextView;

    .line 92
    const v5, 0x7f0b00e4

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mTitle2:Landroid/widget/TextView;

    .line 93
    const v5, 0x7f0b00e6

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mTitle3:Landroid/widget/TextView;

    .line 94
    const v5, 0x7f0b00e3

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mRadio1:Landroid/widget/RadioButton;

    .line 95
    const v5, 0x7f0b00e5

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mRadio2:Landroid/widget/RadioButton;

    .line 96
    const v5, 0x7f0b00e7

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mRadio3:Landroid/widget/RadioButton;

    .line 97
    iget-object v5, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mRadio1:Landroid/widget/RadioButton;

    iget-object v6, p0, Lcom/android/camera/ui/SettingVirtualLayout$MyAdapter;->this$0:Lcom/android/camera/ui/SettingVirtualLayout;

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v5, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mRadio2:Landroid/widget/RadioButton;

    iget-object v6, p0, Lcom/android/camera/ui/SettingVirtualLayout$MyAdapter;->this$0:Lcom/android/camera/ui/SettingVirtualLayout;

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v5, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mRadio3:Landroid/widget/RadioButton;

    iget-object v6, p0, Lcom/android/camera/ui/SettingVirtualLayout$MyAdapter;->this$0:Lcom/android/camera/ui/SettingVirtualLayout;

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 104
    :goto_0
    iget-object v5, p0, Lcom/android/camera/ui/SettingVirtualLayout$MyAdapter;->this$0:Lcom/android/camera/ui/SettingVirtualLayout;

    #getter for: Lcom/android/camera/ui/SettingVirtualLayout;->mPrefs:[Lcom/android/camera/ListPreference;
    invoke-static {v5}, Lcom/android/camera/ui/SettingVirtualLayout;->access$000(Lcom/android/camera/ui/SettingVirtualLayout;)[Lcom/android/camera/ListPreference;

    move-result-object v5

    aget-object v3, v5, p1

    .line 105
    .local v3, pref:Lcom/android/camera/ListPreference;
    iput-object v3, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mPref:Lcom/android/camera/ListPreference;

    .line 106
    iget-object v5, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v5, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mTitle1:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v5, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mTitle2:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, v9

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v5, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mTitle3:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v5, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mRadio1:Landroid/widget/RadioButton;

    invoke-virtual {v5, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 111
    iget-object v5, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mRadio2:Landroid/widget/RadioButton;

    invoke-virtual {v5, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 112
    iget-object v5, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mRadio3:Landroid/widget/RadioButton;

    invoke-virtual {v5, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 113
    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getOverrideValue()Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, value:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 115
    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 117
    :cond_0
    invoke-virtual {v3, v4}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 118
    .local v2, index:I
    packed-switch v2, :pswitch_data_0

    .line 129
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Why has none value? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 102
    .end local v2           #index:I
    .end local v3           #pref:Lcom/android/camera/ListPreference;
    .end local v4           #value:Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;
    check-cast v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;

    .restart local v1       #holder:Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;
    goto :goto_0

    .line 120
    .restart local v2       #index:I
    .restart local v3       #pref:Lcom/android/camera/ListPreference;
    .restart local v4       #value:Ljava/lang/String;
    :pswitch_0
    iget-object v5, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mRadio1:Landroid/widget/RadioButton;

    invoke-virtual {v5, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 131
    :goto_1
    iget-object v5, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mRadio1:Landroid/widget/RadioButton;

    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 132
    iget-object v5, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mRadio2:Landroid/widget/RadioButton;

    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 133
    iget-object v5, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mRadio3:Landroid/widget/RadioButton;

    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 134
    iget-object v5, p0, Lcom/android/camera/ui/SettingVirtualLayout$MyAdapter;->this$0:Lcom/android/camera/ui/SettingVirtualLayout;

    #getter for: Lcom/android/camera/ui/SettingVirtualLayout;->mPrefs:[Lcom/android/camera/ListPreference;
    invoke-static {v5}, Lcom/android/camera/ui/SettingVirtualLayout;->access$000(Lcom/android/camera/ui/SettingVirtualLayout;)[Lcom/android/camera/ListPreference;

    move-result-object v5

    aget-object v5, v5, p1

    invoke-virtual {v5}, Lcom/android/camera/ListPreference;->isEnabled()Z

    move-result v0

    .line 135
    .local v0, enabled:Z
    iget-object v5, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mRadio1:Landroid/widget/RadioButton;

    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 136
    iget-object v5, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mRadio2:Landroid/widget/RadioButton;

    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 137
    iget-object v5, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mRadio3:Landroid/widget/RadioButton;

    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 139
    return-object p2

    .line 123
    .end local v0           #enabled:Z
    :pswitch_1
    iget-object v5, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mRadio2:Landroid/widget/RadioButton;

    invoke-virtual {v5, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 126
    :pswitch_2
    iget-object v5, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mRadio3:Landroid/widget/RadioButton;

    invoke-virtual {v5, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/camera/ui/SettingVirtualLayout$MyAdapter;->this$0:Lcom/android/camera/ui/SettingVirtualLayout;

    #getter for: Lcom/android/camera/ui/SettingVirtualLayout;->mPrefs:[Lcom/android/camera/ListPreference;
    invoke-static {v0}, Lcom/android/camera/ui/SettingVirtualLayout;->access$000(Lcom/android/camera/ui/SettingVirtualLayout;)[Lcom/android/camera/ListPreference;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public updateItemSelected(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 148
    iput p1, p0, Lcom/android/camera/ui/SettingVirtualLayout$MyAdapter;->mSelectedIndex:I

    .line 149
    return-void
.end method
