class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.35.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.35.2/lightdash-cli-3.35.2-macos-arm64.tar.gz"
      sha256 "2232fa8b5755abd38998d538293a9b522900f92139955d3f21df59572d7d4ccb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.35.2/lightdash-cli-3.35.2-macos-x64.tar.gz"
      sha256 "71cb315b5b57a80e8e1d6a9f79aa6c71ac00ea8495acf8b4339ab258ae03843f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.35.2/lightdash-cli-3.35.2-linux-x64.tar.gz"
    sha256 "aa3816635cecf933faec30daf3c75e523b4dca595ea7950c902f215f71e599c7"

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
