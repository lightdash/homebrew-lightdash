class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3337.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3337.0/lightdash-cli-0.3337.0-macos-arm64.tar.gz"
      sha256 "444e79421829862720767c00ed590e6b19b8017e023d631bcfa862c3099d8d3e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3337.0/lightdash-cli-0.3337.0-macos-x64.tar.gz"
      sha256 "93292ef3cabb35dfe1e8fafb7efe3cb4c8a6e3b4cbd3af88abfee89e201fdc43"
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
