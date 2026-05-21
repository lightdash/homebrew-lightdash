class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3002.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3002.0/lightdash-cli-0.3002.0-macos-arm64.tar.gz"
      sha256 "b31f3d3bcb0826fa1fbc98513469060b5e68fe243f34f93a3efc08591e33d47c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3002.0/lightdash-cli-0.3002.0-macos-x64.tar.gz"
      sha256 "7347095e5ccb41c751a18816751a3420ac7191dd0582e155bbf131c8915247b9"
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
