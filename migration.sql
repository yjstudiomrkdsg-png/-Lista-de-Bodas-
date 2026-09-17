CREATE TABLE "gifts" (
	"id" text PRIMARY KEY,
	"name" text NOT NULL,
	"description" text,
	"category" text NOT NULL,
	"price" text,
	"currency" text DEFAULT '€',
	"image_url" text,
	"product_url" text,
	"status" text DEFAULT 'available' NOT NULL,
	"purchased_by" jsonb,
	"created_at" text,
	"updated_at" text
);
--> statement-breakpoint
CREATE TABLE "wedding_settings" (
	"id" text PRIMARY KEY DEFAULT 'default',
	"couple_names" text NOT NULL,
	"wedding_date" text NOT NULL,
	"welcome_message" text NOT NULL,
	"admin_pin" text NOT NULL,
	"notification_email" text,
	"hide_purchased_by_default" boolean DEFAULT true,
	"bank_info" jsonb,
	"updated_at" timestamp DEFAULT now()
);
