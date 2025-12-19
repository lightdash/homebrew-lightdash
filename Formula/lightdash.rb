class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2267.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2267.0/lightdash-cli-0.2267.0-macos-arm64.tar.gz"
      sha256 "85defaec02f2ef97b40445b7f826422bcb3391011434ce8ee70c13317799056c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2267.0/lightdash-cli-0.2267.0-macos-x64.tar.gz"
      sha256 "befccfbce3b19581725056e84dbb676f4521f414b6f8bb6aa57affd54ba83059"
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
