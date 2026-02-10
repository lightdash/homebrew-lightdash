class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2446.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2446.0/lightdash-cli-0.2446.0-macos-arm64.tar.gz"
      sha256 "a8b0ef931bc4218952007407fa5add3b2d60e0d1dd01001e3bd98caf43637ac7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2446.0/lightdash-cli-0.2446.0-macos-x64.tar.gz"
      sha256 "871301efa2718229001d1bebf42d5bf4837c0926fe40657ac724cbd98e2b8e7a"
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
