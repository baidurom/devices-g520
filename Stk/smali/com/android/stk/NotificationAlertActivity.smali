.class public Lcom/android/stk/NotificationAlertActivity;
.super Landroid/app/Activity;
.source "NotificationAlertActivity.java"


# instance fields
.field private mButtonClicked:Landroid/view/View$OnClickListener;

.field private mNotificationMessage:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/android/stk/NotificationAlertActivity;->mNotificationMessage:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/android/stk/NotificationAlertActivity;->mTitle:Ljava/lang/String;

    .line 80
    new-instance v0, Lcom/android/stk/NotificationAlertActivity$1;

    invoke-direct {v0, p0}, Lcom/android/stk/NotificationAlertActivity$1;-><init>(Lcom/android/stk/NotificationAlertActivity;)V

    iput-object v0, p0, Lcom/android/stk/NotificationAlertActivity;->mButtonClicked:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x3

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0, v5}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 55
    .local v3, window:Landroid/view/Window;
    const v4, 0x7f030005

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 57
    const v4, 0x7f070010

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 58
    .local v1, mMessageView:Landroid/widget/TextView;
    const v4, 0x7f070006

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 59
    .local v2, okButton:Landroid/widget/Button;
    const v4, 0x7f070012

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 67
    .local v0, cancelButton:Landroid/widget/Button;
    sget-object v4, Lcom/android/stk/StkApp;->mIdleMessage:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/stk/NotificationAlertActivity;->mNotificationMessage:Ljava/lang/String;

    .line 68
    sget-object v4, Lcom/android/stk/StkApp;->mPLMN:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/stk/NotificationAlertActivity;->mTitle:Ljava/lang/String;

    .line 70
    const v4, 0x108050a

    invoke-virtual {v3, v5, v4}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 72
    iget-object v4, p0, Lcom/android/stk/NotificationAlertActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v4, p0, Lcom/android/stk/NotificationAlertActivity;->mButtonClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v4, p0, Lcom/android/stk/NotificationAlertActivity;->mButtonClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v4, p0, Lcom/android/stk/NotificationAlertActivity;->mNotificationMessage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method
