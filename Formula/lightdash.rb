class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3377.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3377.0/lightdash-cli-0.3377.0-macos-arm64.tar.gz"
      sha256 "73f590030733ad960531f64967782b32579c7100cf5402a92781f28066daa4b0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3377.0/lightdash-cli-0.3377.0-macos-x64.tar.gz"
      sha256 "d6370ace0904a717306b6555ad3d1a637eb1c3b24ed019dc874cfe84ace47c58"
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
