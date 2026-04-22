class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2776.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2776.0/lightdash-cli-0.2776.0-macos-arm64.tar.gz"
      sha256 "4aa37358635e3d7083b6a3e3be2a3fbfed05d51811b650abf6f9fc0ab11ec94f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2776.0/lightdash-cli-0.2776.0-macos-x64.tar.gz"
      sha256 "a4b8689d8e79a7e0dbe137146b92d396881e781e59e28519f68da3febd025dfc"
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
