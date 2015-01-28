.class public final enum Lcom/android/gallery3d/app/MovieControllerOverlay$State;
.super Ljava/lang/Enum;
.source "MovieControllerOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MovieControllerOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/gallery3d/app/MovieControllerOverlay$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/gallery3d/app/MovieControllerOverlay$State;

.field public static final enum BUFFERING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

.field public static final enum ENDED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

.field public static final enum ERROR:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

.field public static final enum LOADING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

.field public static final enum PAUSED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

.field public static final enum PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

.field public static final enum RETRY_CONNECTING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

.field public static final enum RETRY_CONNECTING_ERROR:Lcom/android/gallery3d/app/MovieControllerOverlay$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    new-instance v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 64
    new-instance v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v4}, Lcom/android/gallery3d/app/MovieControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 65
    new-instance v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    const-string v1, "ENDED"

    invoke-direct {v0, v1, v5}, Lcom/android/gallery3d/app/MovieControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->ENDED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 66
    new-instance v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6}, Lcom/android/gallery3d/app/MovieControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->ERROR:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 67
    new-instance v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v7}, Lcom/android/gallery3d/app/MovieControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->LOADING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 68
    new-instance v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    const-string v1, "BUFFERING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->BUFFERING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 69
    new-instance v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    const-string v1, "RETRY_CONNECTING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->RETRY_CONNECTING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 70
    new-instance v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    const-string v1, "RETRY_CONNECTING_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->RETRY_CONNECTING_ERROR:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 62
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->ENDED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->ERROR:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->LOADING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->BUFFERING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->RETRY_CONNECTING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->RETRY_CONNECTING_ERROR:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->$VALUES:[Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 62
    const-class v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    return-object v0
.end method

.method public static values()[Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->$VALUES:[Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    return-object v0
.end method
