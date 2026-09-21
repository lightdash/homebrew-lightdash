class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.271.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.271.0/lightdash-cli-2.271.0-macos-arm64.tar.gz"
      sha256 "f8ca547ad88f1a8a215a92ea3d19b0108bce19b75d6fadbdbc9d1ccbea1b8e30"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.271.0/lightdash-cli-2.271.0-macos-x64.tar.gz"
      sha256 "0321ada167121e82dd48ba7b2cdb158d572893cf55d54ed415659c4fe2b5d2f1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.271.0/lightdash-cli-2.271.0-linux-x64.tar.gz"
      sha256 "9da0337a28f40aeeb3451b2ae31946ee27903d22cf913f5a2d2df6c1c4bc4cfd"
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
