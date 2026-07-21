class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3436.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3436.0/lightdash-cli-0.3436.0-macos-arm64.tar.gz"
      sha256 "9aca7c75eb08c20e11c8b93b4533a39ba594ad7ba862ce5d5416e8ff218b1640"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3436.0/lightdash-cli-0.3436.0-macos-x64.tar.gz"
      sha256 "8a5297ee926bdbdc6cb8cab46df2c17e4436558ca7a85551219667055c7e896d"
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
