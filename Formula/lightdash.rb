class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2577.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2577.0/lightdash-cli-0.2577.0-macos-arm64.tar.gz"
      sha256 "f466c52685cc00cf5e5002c1732b8440d1b8bd54cf596c8ab38ce4229bb862c1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2577.0/lightdash-cli-0.2577.0-macos-x64.tar.gz"
      sha256 "bef488871f09782948e66cc3841de3cd5bd31fd2a3369f4ccee0f7f1a99db48a"
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
