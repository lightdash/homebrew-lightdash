class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.271.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.271.1/lightdash-cli-2.271.1-macos-arm64.tar.gz"
      sha256 "7865f4c1eca239f52578f18e80d883279b4e3b03d587ac90302c4ade97a94be0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.271.1/lightdash-cli-2.271.1-macos-x64.tar.gz"
      sha256 "2b5c4c05fb70b400789971dbe724f33dd728b77444a8799b5f38baa625d978b5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.271.1/lightdash-cli-2.271.1-linux-x64.tar.gz"
      sha256 "d49b8abd953104b17e232312185b1e65c05ccd5a03f3e77f14b68b0d63fa30c4"
    end
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
