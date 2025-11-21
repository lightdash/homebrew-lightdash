class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2199.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2199.3/lightdash-cli-0.2199.3-macos-arm64.tar.gz"
      sha256 "a8ebaffa69b9dcc79c0f55a395dd81f91ab5733439a763bc330eaafbeed73016"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2199.3/lightdash-cli-0.2199.3-macos-x64.tar.gz"
      sha256 "f1901b7570cd4c1f14695ea70ab165fdc1807be1f4bf06e21d8651fa1bbdccbd"
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
