.class public Lcom/android/camera/ui/SettingVirtualLayout;
.super Lcom/android/camera/ui/RotateLayout;
.source "SettingVirtualLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/SettingVirtualLayout$1;,
        Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;,
        Lcom/android/camera/ui/SettingVirtualLayout$MyAdapter;,
        Lcom/android/camera/ui/SettingVirtualLayout$Listener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "SettingVirtualLayout"


# instance fields
.field private mAdapter:Lcom/android/camera/ui/SettingVirtualLayout$MyAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/android/camera/ui/SettingVirtualLayout$Listener;

.field private mPrefs:[Lcom/android/camera/ListPreference;

.field private mSettingList:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/ui/SettingVirtualLayout;->LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SettingVirtualLayout;->mInflater:Landroid/view/LayoutInflater;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/SettingVirtualLayout;)[Lcom/android/camera/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/SettingVirtualLayout;->mPrefs:[Lcom/android/camera/ListPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/SettingVirtualLayout;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/SettingVirtualLayout;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public initialize([Lcom/android/camera/ListPreference;)V
    .locals 4
    .parameter "preference"

    .prologue
    .line 164
    if-nez p1, :cond_0

    .line 182
    :goto_0
    return-void

    .line 165
    :cond_0
    array-length v1, p1

    .line 166
    .local v1, len:I
    new-array v2, v1, [Lcom/android/camera/ListPreference;

    iput-object v2, p0, Lcom/android/camera/ui/SettingVirtualLayout;->mPrefs:[Lcom/android/camera/ListPreference;

    .line 167
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 168
    iget-object v2, p0, Lcom/android/camera/ui/SettingVirtualLayout;->mPrefs:[Lcom/android/camera/ListPreference;

    aget-object v3, p1, v0

    aput-object v3, v2, v0

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 170
    :cond_1
    new-instance v2, Lcom/android/camera/ui/SettingVirtualLayout$MyAdapter;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/SettingVirtualLayout$MyAdapter;-><init>(Lcom/android/camera/ui/SettingVirtualLayout;)V

    iput-object v2, p0, Lcom/android/camera/ui/SettingVirtualLayout;->mAdapter:Lcom/android/camera/ui/SettingVirtualLayout$MyAdapter;

    .line 171
    iget-object v2, p0, Lcom/android/camera/ui/SettingVirtualLayout;->mSettingList:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/AbsListView;

    iget-object v3, p0, Lcom/android/camera/ui/SettingVirtualLayout;->mAdapter:Lcom/android/camera/ui/SettingVirtualLayout$MyAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingVirtualLayout;->reloadPreference()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "view"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;

    .line 202
    .local v1, holder:Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;
    iget-object v3, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mPref:Lcom/android/camera/ListPreference;

    .line 203
    .local v3, pref:Lcom/android/camera/ListPreference;
    sget-boolean v5, Lcom/android/camera/ui/SettingVirtualLayout;->LOG:Z

    if-eqz v5, :cond_0

    .line 204
    const-string v5, "SettingVirtualLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") pref="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    if-nez v3, :cond_2

    .line 239
    :cond_1
    :goto_0
    return-void

    .line 209
    :cond_2
    iget-object v4, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mRadio1:Landroid/widget/RadioButton;

    .line 210
    .local v4, selected:Landroid/widget/RadioButton;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 226
    :goto_1
    :pswitch_0
    new-array v0, v11, [Landroid/widget/RadioButton;

    iget-object v5, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mRadio1:Landroid/widget/RadioButton;

    aput-object v5, v0, v8

    iget-object v5, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mRadio2:Landroid/widget/RadioButton;

    aput-object v5, v0, v9

    iget-object v5, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mRadio3:Landroid/widget/RadioButton;

    aput-object v5, v0, v10

    .line 231
    .local v0, buttons:[Landroid/widget/RadioButton;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v11, :cond_4

    .line 232
    aget-object v5, v0, v2

    if-eq v4, v5, :cond_3

    .line 233
    aget-object v5, v0, v2

    invoke-virtual {v5, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 231
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 212
    .end local v0           #buttons:[Landroid/widget/RadioButton;
    .end local v2           #i:I
    :pswitch_1
    invoke-virtual {v3, v8}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 213
    iget-object v4, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mRadio1:Landroid/widget/RadioButton;

    .line 214
    goto :goto_1

    .line 216
    :pswitch_2
    invoke-virtual {v3, v9}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 217
    iget-object v4, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mRadio2:Landroid/widget/RadioButton;

    .line 218
    goto :goto_1

    .line 220
    :pswitch_3
    invoke-virtual {v3, v10}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 221
    iget-object v4, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mRadio3:Landroid/widget/RadioButton;

    .line 222
    goto :goto_1

    .line 236
    .restart local v0       #buttons:[Landroid/widget/RadioButton;
    .restart local v2       #i:I
    :cond_4
    iget-object v5, p0, Lcom/android/camera/ui/SettingVirtualLayout;->mListener:Lcom/android/camera/ui/SettingVirtualLayout$Listener;

    if-eqz v5, :cond_1

    .line 237
    iget-object v5, p0, Lcom/android/camera/ui/SettingVirtualLayout;->mListener:Lcom/android/camera/ui/SettingVirtualLayout$Listener;

    invoke-interface {v5}, Lcom/android/camera/ui/SettingVirtualLayout$Listener;->onSettingChanged()V

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00e3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/camera/ui/RotateLayout;->onFinishInflate()V

    .line 60
    const v0, 0x7f0b00e0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/ui/SettingVirtualLayout;->mSettingList:Landroid/view/ViewGroup;

    .line 61
    return-void
.end method

.method public reloadPreference()V
    .locals 3

    .prologue
    .line 186
    iget-object v2, p0, Lcom/android/camera/ui/SettingVirtualLayout;->mPrefs:[Lcom/android/camera/ListPreference;

    array-length v1, v2

    .line 187
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 188
    iget-object v2, p0, Lcom/android/camera/ui/SettingVirtualLayout;->mPrefs:[Lcom/android/camera/ListPreference;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 189
    iget-object v2, p0, Lcom/android/camera/ui/SettingVirtualLayout;->mPrefs:[Lcom/android/camera/ListPreference;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->reloadValue()V

    .line 187
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/SettingVirtualLayout;->mAdapter:Lcom/android/camera/ui/SettingVirtualLayout$MyAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 193
    return-void
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/SettingVirtualLayout$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/camera/ui/SettingVirtualLayout;->mListener:Lcom/android/camera/ui/SettingVirtualLayout$Listener;

    .line 197
    return-void
.end method
