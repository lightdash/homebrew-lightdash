class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2447.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2447.0/lightdash-cli-0.2447.0-macos-arm64.tar.gz"
      sha256 "c4685e004a8a902e693054f6c4aacd5b11a6b91ab8c71508c399f18759e5f244"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2447.0/lightdash-cli-0.2447.0-macos-x64.tar.gz"
      sha256 "eed432927492f11a7ae823e1e2997edfaea92c185272bdab0a50cb6e635ae565"
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
