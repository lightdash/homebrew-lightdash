class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2616.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2616.0/lightdash-cli-0.2616.0-macos-arm64.tar.gz"
      sha256 "038f6fa482dc522a0704d9072be68482cfe23e4d65c354723ad8a6ae875e5888"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2616.0/lightdash-cli-0.2616.0-macos-x64.tar.gz"
      sha256 "119fc0889fdf9da11feb27fa80e3ad47ac8f82591419cfc3c6590c4a2694ec02"
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
