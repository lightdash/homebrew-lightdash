class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2679.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2679.0/lightdash-cli-0.2679.0-macos-arm64.tar.gz"
      sha256 "ca5bdd8dbc7f5addfbedb077cc1ac2ddb27292709fb291c15c084385b3cd114f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2679.0/lightdash-cli-0.2679.0-macos-x64.tar.gz"
      sha256 "60184f01b0bb8e030090090ed054f5743b907c92c3aa51f4ff1517dcf52fd293"
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
