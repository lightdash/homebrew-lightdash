class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2423.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2423.0/lightdash-cli-0.2423.0-macos-arm64.tar.gz"
      sha256 "79b64890d8654ff97843c4607b424415b40cfc3d495528bee67cc40bcc469ea6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2423.0/lightdash-cli-0.2423.0-macos-x64.tar.gz"
      sha256 "672b70a412e3ee7c440874447b37edba7efc73eb3119ab6790c602108aedc430"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
