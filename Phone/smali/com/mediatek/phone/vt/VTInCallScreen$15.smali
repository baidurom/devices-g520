.class Lcom/mediatek/phone/vt/VTInCallScreen$15;
.super Ljava/lang/Object;
.source "VTInCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/phone/vt/VTInCallScreen;->showReCallDialogEx(ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/vt/VTInCallScreen;


# direct methods
.method constructor <init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 2297
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen$15;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$15;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #getter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$500(Lcom/mediatek/phone/vt/VTInCallScreen;)Lcom/android/phone/InCallScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen$15;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #getter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$500(Lcom/mediatek/phone/vt/VTInCallScreen;)Lcom/android/phone/InCallScreen;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect(I)V

    .line 2307
    return-void
.end method
