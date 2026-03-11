class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2609.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2609.0/lightdash-cli-0.2609.0-macos-arm64.tar.gz"
      sha256 "0b9c7e9646b9c127edff103a8ddf4d1098a46d3fbea2e7b3c439c1c86e01fbbf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2609.0/lightdash-cli-0.2609.0-macos-x64.tar.gz"
      sha256 "cbc274e5a23e3f36d42f7876773e6d5e8737bf07e8445118509700a63b38a039"
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
