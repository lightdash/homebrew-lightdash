class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3063.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3063.1/lightdash-cli-0.3063.1-macos-arm64.tar.gz"
      sha256 "6df1c4a706e6c462e318084dc37d31f4a7092350b18ae30a1f9a3e02409930e8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3063.1/lightdash-cli-0.3063.1-macos-x64.tar.gz"
      sha256 "c2643e06360480d65a827c716858bea860f1e98c78e8775971ed5baafdd44e1c"
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
