class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2828.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2828.1/lightdash-cli-0.2828.1-macos-arm64.tar.gz"
      sha256 "a33fd1f8cf52797cafddc5ba00fa577c38f3532cd561dab1ac704e41f1b6a372"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2828.1/lightdash-cli-0.2828.1-macos-x64.tar.gz"
      sha256 "178bac3b76ef91abd6bb1ae58aa3ade34d87715d59dbda0f235f771ade7da5a2"
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
