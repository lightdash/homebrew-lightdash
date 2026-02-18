class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2483.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2483.2/lightdash-cli-0.2483.2-macos-arm64.tar.gz"
      sha256 "fc71e2d07699a2af4de44a180cc335f6ca0054b657371d87d200b6f72bd74b17"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2483.2/lightdash-cli-0.2483.2-macos-x64.tar.gz"
      sha256 "3c24570cb51a2b97bf2ffddc48621e1a0e615c5cd055641ff6e38c3d2d2cb20c"
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
