class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2965.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2965.0/lightdash-cli-0.2965.0-macos-arm64.tar.gz"
      sha256 "8300a5b524338c32e62ff395b81c8197cbf97b578bb2b4f452e209ea57ddacb3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2965.0/lightdash-cli-0.2965.0-macos-x64.tar.gz"
      sha256 "f07ab8f5baeac6c198c77d32248a90e94a854397744d22605aa408ac23cc3b50"
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
