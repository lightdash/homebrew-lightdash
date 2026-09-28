class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.352.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.352.2/lightdash-cli-2.352.2-macos-arm64.tar.gz"
      sha256 "231bfa71ea3a0230158cfafea5123185a240e8c31b565dcf1a1b9f569f809167"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.352.2/lightdash-cli-2.352.2-macos-x64.tar.gz"
      sha256 "2439426bf8778209af753a00c255c761e2403d47c76d48f56ec1b91666da97d7"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.352.2/lightdash-cli-2.352.2-linux-x64.tar.gz"
    sha256 "c635e162e8e4fc1d77ebd20ce67c834df059509312c1476052298ea9a24cb34e"

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
