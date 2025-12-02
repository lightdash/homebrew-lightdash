class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2214.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2214.3/lightdash-cli-0.2214.3-macos-arm64.tar.gz"
      sha256 "e3e9c7084bf82a3f17be9fb048ac529b8e1a994bee3308bc627b72ffda6c1cf8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2214.3/lightdash-cli-0.2214.3-macos-x64.tar.gz"
      sha256 "38b8f9724965dd75f8a65a7382359e2609ff222afe8db4b9b9e0522e42627f70"
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
