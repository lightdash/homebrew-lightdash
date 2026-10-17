class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.602.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.602.1/lightdash-cli-2.602.1-macos-arm64.tar.gz"
      sha256 "c0dead4d6356c94c474bb575e526e2a1a3d530a04ec6da74fc8b803e1d3f7711"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.602.1/lightdash-cli-2.602.1-macos-x64.tar.gz"
      sha256 "3d4717f25a52d6ac13cc30bd6fc24ef73dc60098c58abc49b62395c9092a0abe"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.602.1/lightdash-cli-2.602.1-linux-x64.tar.gz"
    sha256 "19d82949410f81a5e0ba21c85b3057df665ffc17598a013b3722a96fedb4f604"

    depends_on arch: :x86_64
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
