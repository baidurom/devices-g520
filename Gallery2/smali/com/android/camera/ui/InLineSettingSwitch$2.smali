.class Lcom/android/camera/ui/InLineSettingSwitch$2;
.super Ljava/lang/Object;
.source "InLineSettingSwitch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/InLineSettingSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/InLineSettingSwitch;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/InLineSettingSwitch;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/camera/ui/InLineSettingSwitch$2;->this$0:Lcom/android/camera/ui/InLineSettingSwitch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 98
    invoke-static {}, Lcom/android/camera/ui/InLineSettingSwitch;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "InLineSettingSwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick() mPreference="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingSwitch$2;->this$0:Lcom/android/camera/ui/InLineSettingSwitch;

    iget-object v2, v2, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSwitch$2;->this$0:Lcom/android/camera/ui/InLineSettingSwitch;

    iget-object v0, v0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSwitch$2;->this$0:Lcom/android/camera/ui/InLineSettingSwitch;

    iget-object v0, v0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSwitch$2;->this$0:Lcom/android/camera/ui/InLineSettingSwitch;

    iget-object v0, v0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSwitch$2;->this$0:Lcom/android/camera/ui/InLineSettingSwitch;

    iget-object v0, v0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSwitch$2;->this$0:Lcom/android/camera/ui/InLineSettingSwitch;

    invoke-interface {v0, v1}, Lcom/android/camera/ui/InLineSettingItem$Listener;->onShow(Lcom/android/camera/ui/InLineSettingItem;)V

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSwitch$2;->this$0:Lcom/android/camera/ui/InLineSettingSwitch;

    #getter for: Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/camera/ui/InLineSettingSwitch;->access$100(Lcom/android/camera/ui/InLineSettingSwitch;)Landroid/widget/Switch;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSwitch$2;->this$0:Lcom/android/camera/ui/InLineSettingSwitch;

    #getter for: Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/camera/ui/InLineSettingSwitch;->access$100(Lcom/android/camera/ui/InLineSettingSwitch;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSwitch$2;->this$0:Lcom/android/camera/ui/InLineSettingSwitch;

    #getter for: Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/camera/ui/InLineSettingSwitch;->access$100(Lcom/android/camera/ui/InLineSettingSwitch;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->performClick()Z

    .line 113
    :cond_2
    return-void
.end method
