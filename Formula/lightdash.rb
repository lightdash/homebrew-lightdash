class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.217.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.217.2/lightdash-cli-2.217.2-macos-arm64.tar.gz"
      sha256 "9e24515bf8b989629173cc50ae94521336027314ff006fe72883b286bde23ff1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.217.2/lightdash-cli-2.217.2-macos-x64.tar.gz"
      sha256 "2f23b0659d9519c3ec8852cf9d222f4bec84a0aae64a5d9a684c480aacf8ff27"
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
